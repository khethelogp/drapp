import 'package:drapp/data/available_times.dart';
import 'package:drapp/models/times.dart';
import 'package:drapp/screens/user-screens/home_screen.dart';
import 'package:drapp/widgets/primary_button.dart';
import 'package:drapp/widgets/time_item.dart';
import 'package:flutter/material.dart';

class Availability extends StatelessWidget {
  // const Availability({ Key? key }) : super(key: key);

  static const routeName = '/availability';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Availability'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            icon: const Icon(Icons.arrow_back),
          )),
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
                          colors: [Colors.white38, Colors.white70])),
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
                            child: Image.asset('assets/images/logo.png')),
                        const Text('App Name')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(clipBehavior: Clip.none, children: [
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                'We are available on',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Theme.of(context).errorColor),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: aTime.length,
                              itemBuilder: (ctx, index) => TimeItem(
                                  aTime[index]['day'], aTime[index]['hours']),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Lunch time 13:00pm - 14:00pm Everyday.',
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            PrimaryButton('Book New Appointment')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
