import 'package:drapp/screens/client/home_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);
  static const routeName =  '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  String _userName = '';
  String _userEmail = '';
  String _phone = '';
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

  void _onSumbit() {
    var isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

    if(isValid == true){
      _formKey.currentState?.save();
      print(_userEmail);      
      print(_userPassword);      
      print(_userName);      
      print(_phone);      
    } else {
      return;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Profile'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed(HomeScreen.routeName);
            },
            icon: const Icon(Icons.arrow_back),
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Container(  
              // color: Colors.amber,
              height: 250,
              child: const Center(
                child: Icon(Icons.account_circle_rounded,size: 150,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
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
                          labelText: 'Full Name',
                        ),
                        onSaved: (value) {
                          _userName = value!;
                        },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                        key: const ValueKey('email'),
                        autocorrect: true,
                        textCapitalization: TextCapitalization.none,
                        enableSuggestions: false,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          } else if (value.length < 4) {
                            return 'Please enter atleast 4 characters';
                          } else if (!value.contains('@')) {
                            return 'Please enter a valid email address';
                          }
          
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                        onSaved: (value) {
                          _userEmail = value!;
                        },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                        key: const ValueKey('phone'),
                        autocorrect: true,
                        textCapitalization: TextCapitalization.words,
                        enableSuggestions: false,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Phone is required';
                          } else if(value.length < 10){
                            return 'Please enter a valid phone number';
                          }
          
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone',
                        ),
                        onSaved: (value) {
                          _phone = value!;
                        },
                    ),
                    const SizedBox(height: 10,),
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
                    const SizedBox(height: 15,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20)
                          ),
                          child: Text('Update'),
                          onPressed: _onSumbit, 
                        ),
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}