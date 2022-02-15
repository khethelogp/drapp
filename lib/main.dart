import 'package:flutter/material.dart';

import 'package:drapp/screens/auth_screen.dart';
import 'package:drapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  /* Our color codes: #0d173c 
  #0cdec8     #b7e1dd.   #f0f5f7 */
  // somthing is off with git

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr App',
      theme: ThemeData(
        primaryColor: const Color(0xFF0CDEC8),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0CDEC8),
          secondary: const Color(0xFFB7E1DD),
        )
      ),
      home: const HomeScreen(),
      // home: const AuthScreen(),
    );
  }
}

