import 'package:drapp/data/doctors.dart';
import 'package:drapp/screens/admin/admin_home_screen.dart';
import 'package:drapp/widgets/user_item.dart';
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
              children: <Widget> [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: DOCTORS.map((e) => UserItem(e.imageUrl, e.drName)).toList(),
                    ),
                    /* child: ListView.builder(
                      itemCount: DOCTORS.length,
                      itemBuilder: (ctx, index) {
                        return UserItem(
                          DOCTORS[index].imageUrl,
                          DOCTORS[index].drName
                        );
                      }
                    ) */
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