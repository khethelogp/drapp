import 'package:flutter/material.dart';

class HourItem extends StatelessWidget {
  // const HourItem({ Key? key }) : super(key: key);
  
  final String hour;
  const HourItem(this.hour);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(15),
      focusColor: Theme.of(context).accentColor,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        // alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              hour,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).accentColor, 
            width: 2
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}