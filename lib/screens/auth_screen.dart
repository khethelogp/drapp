import 'package:drapp/widgets/auth_form.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            ],
          ),
          AuthForm(_isLoading),
        ],
      )
    );
  }
}