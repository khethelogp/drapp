import 'package:drapp/screens/home_screen.dart';
import 'package:drapp/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class Availability extends StatelessWidget {
  const Availability({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Availability'),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushNamed(HomeScreen.routeName);
          }, 
          icon: const Icon(Icons.arrow_back),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  height: 240,
                  child: Image.asset(
                    'assets/images/bg-2.jpeg', 
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
                        Colors.white70
                      ]
                    )
                  ),
                  // color: Colors.white38,
                  height: 240,
                ),
                SizedBox(
                  height: 240,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Image.asset('assets/images/logo.png')
                        ),
                        const Text('App Name')
                      ],
                    ),
                  ),
                ),
                /* Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi eveniet repellat officia nesciunt ea excepturi obcaecati quaerat repellendus quasi fuga, laborum ex quidem voluptatibus nam cupiditate tempore sequi optio alias error dolor exercitationem! Adipisci alias similique magni quisquam quos! Excepturi consequuntur, aliquam possimus aperiam quae fugit recusandae placeat ex voluptatem?'),
                              PrimaryButton('Something')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ) */
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Card(
                    elevation: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi eveniet repellat officia nesciunt ea excepturi obcaecati quaerat repellendus quasi fuga, laborum ex quidem voluptatibus nam cupiditate tempore sequi optio alias error dolor exercitationem! Adipisci alias similique magni quisquam quos! Excepturi consequuntur, aliquam possimus aperiam quae fugit recusandae placeat ex voluptatem?'),
                          SizedBox(height: 20,),
                          PrimaryButton('Something')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}