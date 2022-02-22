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
                const Text('Jul'),
                Text('12', style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 30
                ),),
                const Text('WED'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column( 
                        children: const <Widget>[
                          Text('Time', style: TextStyle(fontSize: 10),),
                          Text('17:00', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      const SizedBox(width: 20,),
                      Column( 
                        children: const <Widget>[
                          Text('For', style: TextStyle(fontSize: 10),),
                          Text('MySelf', style: TextStyle(fontSize: 12)),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column( 
                        children: const <Widget>[
                          Text('Appointment Type', style: TextStyle(fontSize: 10),),
                          Text('Loose filling', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        children: [
                          ElevatedButton(
                            child: const Text('Option'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.grey[400])
                            ),
                            onPressed: (){}, 
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}