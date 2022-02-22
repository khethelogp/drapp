import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  // const AuthForm({ Key? key }) : super(key: key);
  final bool isLoading;

  const AuthForm(this.isLoading);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  bool _passwordVisible = false;
  final _passwordController = TextEditingController();
  String _userEmail = '';
  String _userName = '';
  String _userPassword = '';

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
    } else {
      return;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign in', 
                style: _isLogin ? TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold 
                ) : null 
              ),
              const SizedBox(width: 50,),
              Text(
                'Sign up',
                style: !_isLogin ? TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold 
                ) : null
              ),
            ],
          ),
          const Divider(
            color: Colors.black
          ),
          Card(
            margin: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if(!_isLogin)
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
                      const SizedBox(height: 10.0,),
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
                      if(!_isLogin)
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
                      const SizedBox(height: 10.0,),
                      if(widget.isLoading)
                        const CircularProgressIndicator(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20)
                          ),
                          child: Text(_isLogin ? 'Login' : 'Signup'),
                          onPressed: _onSumbit, 
                        ),
                      ),
                      if(!widget.isLoading)
                      TextButton(
                        child: Text(_isLogin? 'Create new account?' : 'I already have an account'),
                        onPressed: (){
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        }, 
                      )
                    ],
                  ),
                ), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}
