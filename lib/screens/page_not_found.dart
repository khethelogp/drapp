import 'package:drapp/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/404.gif'),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop();
            }, 
            child: const Text('Go Back Home')
          )
        ],
      ),
    );
  }
}