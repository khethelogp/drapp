import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(color: Colors.white),
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
    );
  }
}