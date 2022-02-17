import 'package:flutter/material.dart';

class TimeItem extends StatelessWidget {
  // const TimeItem({ Key? key }) : super(key: key);
  var day;
  var time;

  TimeItem(this.day, this.time);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(day),
            Text(time)
          ],
        ),
        const SizedBox(height: 10,)
      ],
    ); 
  }
}