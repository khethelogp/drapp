import 'package:flutter/material.dart';

class LinkItem extends StatelessWidget {
  final String id;
  final String title;
  final IconData icon;
  final String route;
  final Color color;

  LinkItem(this.id, this.title, this.icon, this.route, this.color);

  void selectedLink(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      route,
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
      splashColor: Theme.of(context).colorScheme.secondary,
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
              color: Theme.of(context).colorScheme.secondary,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary, 
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