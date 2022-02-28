import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  // const UserItem({ Key? key }) : super(key: key);
  final String imageUrl;
  final String drName;
  
  const UserItem(this.imageUrl, this.drName);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // color: Theme.of(context).colorScheme.secondary,
      color: Colors.grey[300],
      child: ListTile(
        leading: CircleAvatar(
          // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          backgroundImage: NetworkImage(imageUrl),
          backgroundColor: Colors.transparent,
        ),
        title: Text(drName),                          
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          ],
        ),
      )
    );
  }
}