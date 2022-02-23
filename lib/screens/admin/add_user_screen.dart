import 'package:drapp/screens/admin/admin_home_screen.dart';
import 'package:drapp/widgets/auth_form.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  // const AddUser({ Key? key }) : super(key: key);

  static const routeName = '/add-user';

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  var _isLoading = false;

  final _formKey = GlobalKey<FormState>();

  String _userName = '';

  String _userEmail = '';

  String _userPassword = '';

  bool _passwordVisible = false;

  final _passwordController = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  void _toggleVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add A User'),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushNamed(AdminHomeScreen.routeName);
          }, 
          icon: const Icon(Icons.arrow_back)
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 150,
                  width: 100,
                  child: Image.asset('assets/images/logo.png')
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'App', 
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'Name', 
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text('Add a doctor')
              ],
            ),
            const Divider(color: Colors.grey, thickness: 1,),
            Column(
              children: <Widget> [
                Card(
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            key: const ValueKey('username'),
                            autocorrect: true,
                            textCapitalization: TextCapitalization.words,
                            enableSuggestions: false,
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Username is required';
                              } else if(value.length < 4){
                                return 'Please enter atleast 4 characters';
                              }
              
                              return null;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Username',
                            ),
                            onSaved: (value) {
                              _userName = value!;
                            },
                          ),
                          const SizedBox(height: 10,),
                          TextFormField(
                            key: const ValueKey('email'),
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            enableSuggestions: false,
                            validator: (value) {
                              if(value!.isEmpty || !value.contains('@')) {
                                return 'Please enter a valid email address';
                              }
              
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email'
                            ),
                            onSaved: (value) {
                              _userEmail = value!;
                            },
                          ),
                          const SizedBox(height: 10.0,),
                          TextFormField(
                            key: const ValueKey('password'),
                            controller: _passwordController,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible ? Icons.visibility_off : Icons.visibility,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onPressed: _toggleVisibility 
                              )
                            ),
                            validator: (value) {
                              if(value!.isEmpty || value.length < 6) {
                                return 'Password must be atleast 7 characters long';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _userPassword = value!;
                            },
                          ),
                          const SizedBox(height: 10.0,),
                          TextFormField(
                            key: const ValueKey('confirm-password'),
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: 'Confirm Password',
                              hintText: 'Retype your password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible ? Icons.visibility_off : Icons.visibility,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onPressed: _toggleVisibility 
                              )
                            ),
                            validator: (value) {
                              if(value!.isEmpty || value != _passwordController.text) {
                                return 'Passwords do not match!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20)
                              ),
                              child: Text('Add'),
                              onPressed: (){}, 
                            ),
                          ),
                        ],
                      )  
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}