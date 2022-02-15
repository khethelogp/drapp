import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  height: 240,
                  child: Image.asset(
                    'assets/images/bg-1.jpg', 
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white38,
                        Colors.white
                      ]
                    )
                  ),
                  // color: Colors.white38,
                  height: 240,
                ),
                SizedBox(
                  height: 240,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 100,
                          child: Image.asset('assets/images/logo.png')
                        ),
                        const Text('App Name')
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Welcome User',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Text('sonthing'),
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}