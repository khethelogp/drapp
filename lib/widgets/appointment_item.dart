import 'package:flutter/material.dart';

class AppointmentItem extends StatefulWidget {
  // const AppointmentItem({ Key? key }) : super(key: key);
  
  AppointmentItem();

  @override
  _AppointmentItemState createState() => _AppointmentItemState();
}

class _AppointmentItemState extends State<AppointmentItem> {
  var tDate = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary, 
          width: 2
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 2, color: Theme.of(context).colorScheme.secondary)
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Jul'),
                Text('12', style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 30
                ),),
                Text('WED'),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.cyan,
                  child: Row(
                    children: <Widget> [
                      Column(
                        children: const <Widget> [
                          Text('Time', style: TextStyle(fontSize: 14),),
                          Text('17:00 PM')
                        ],
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        children: const <Widget> [
                          Text('For', style: TextStyle(fontSize: 14),),
                          Text('My Self')
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(color: Colors.black,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( 
                      children: [
                        Text('Appointment Type', style: TextStyle(fontSize: 14),),
                        Text('Loose Filling')
                      ],
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      children: [
                        ElevatedButton(
                          child: Text('Option'),
                          onPressed: (){}, 
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}