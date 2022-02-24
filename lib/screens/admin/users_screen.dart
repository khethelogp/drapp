import 'package:drapp/screens/admin/admin_home_screen.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({ Key? key }) : super(key: key);
  static const routeName = '/users';

  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).popAndPushNamed(AdminHomeScreen.routeName);
          }, 
          icon: Icon(Icons.arrow_back)
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  height: 150,
                  width: 100,
                  child: Image.asset('assets/images/logo.png')
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'App', 
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'Name', 
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text('Users')
              ],
            ),
            const Divider(color: Colors.grey, thickness: 1,),
            Column(
              children: const  <Widget> [
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Hello World'),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}