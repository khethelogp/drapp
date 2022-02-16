import 'package:drapp/screens/user-screens/availability_screen.dart';
import 'package:flutter/material.dart';

class LinkItem extends StatelessWidget {
  final String id;
  final String title;
  final IconData icon;
  final Color color;

  LinkItem(this.id, this.title, this.icon ,this.color);

  void selectedLink(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      Availability.routeName,
      // arguments: {
      //   'id': id,
      //   'title': title,
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedLink(context),
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon, 
              size: 40, 
              color: Theme.of(context).accentColor,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).accentColor, 
            width: 2
          ),
          // gradient: LinearGradient(
          //   colors: [
          //     color.withOpacity(0.7),
          //     color,
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}