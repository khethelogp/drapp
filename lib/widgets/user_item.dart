import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  // const UserItem({ Key? key }) : super(key: key);
  final String imageUrl;
  final String drName;
  
  const UserItem(this.imageUrl, this.drName);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Image.network(imageUrl),
        ),
        title: Text(drName),
        trailing: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            SizedBox(width: 10,),
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
          ],
        )
      )
    );
  }
}