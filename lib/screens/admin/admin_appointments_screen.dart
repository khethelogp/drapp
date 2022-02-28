import 'package:drapp/data/booked_appointments.dart';
import 'package:drapp/screens/admin/admin_home_screen.dart';
import 'package:drapp/screens/client/home_screen.dart';
import 'package:drapp/widgets/appointment_item.dart';
import 'package:drapp/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AdminAppointmentsScreen extends StatefulWidget {
  const AdminAppointmentsScreen({ Key? key }) : super(key: key);

  static const routeName = '/admin-bookings';

  @override
  _AdminAppointmentsScreenState createState() => _AdminAppointmentsScreenState();
}

class _AdminAppointmentsScreenState extends State<AdminAppointmentsScreen> {
  var _isUpcoming = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Appointments'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AdminHomeScreen.routeName);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isUpcoming = true;
                          });
                        },
                        child: Text(
                          'Upcoming', 
                          style: _isUpcoming ? TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold 
                          ) : null 
                        ),
                      ),
                      const SizedBox(width: 50,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isUpcoming = false;
                          });
                        },
                        child: Text(
                          'Past',
                          style: !_isUpcoming ? TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold 
                          ) : null
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey
                  ),
                ],
              ),
            ),
            if(_isUpcoming)
            Padding(
              // padding: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 420,
                child: ListView.builder(
                  itemCount: APPOINTMENTS.length,
                  itemBuilder: (ctx, index) => AppointmentItem()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}