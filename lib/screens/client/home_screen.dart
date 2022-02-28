import 'package:drapp/data/user_tabs.dart';
import 'package:drapp/widgets/app_drawer.dart';
import 'package:drapp/widgets/header.dart';
import 'package:drapp/widgets/link_item.dart';
import 'package:drapp/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Color(0x00000000),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Header(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: const <Widget>[
                      Text(
                        'Welcome User',
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
                          LINKS.map(
                            (e) => LinkItem(e.id, e.title,e.icon,e.route, e.color)
                          ).toList(),    
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  const PrimaryButton('Book New Appointment')
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

