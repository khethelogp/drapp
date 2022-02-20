import 'package:drapp/data/user_tabs.dart';
import 'package:drapp/widgets/header.dart';
import 'package:drapp/widgets/link_item.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({ Key? key }) : super(key: key);

  static const routeName = '/admin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Header(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: const <Widget> [
                      Text(
                        'Welcome Admin',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        children: 
                          ADMIN_LINKS.map(
                            (e) => LinkItem(e.id, e.title, e.icon, e.route, e.color)
                          ).toList(),    
                      ),
                    ],
                  ),
                  // const SizedBox(height: 40,),
                  // PrimaryButton('Book New Appointment')
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}