import 'package:drapp/screens/admin/add_user_screen.dart';
import 'package:drapp/screens/admin/admin_appointments_screen.dart';
import 'package:drapp/screens/admin/admin_availability_screen.dart';
import 'package:drapp/screens/admin/admin_home_screen.dart';
import 'package:drapp/screens/admin/users_screen.dart';
import 'package:drapp/screens/auth_screen.dart';
import 'package:drapp/screens/client/appointments_screen.dart';
import 'package:drapp/screens/client/profile_screen.dart';
import 'package:drapp/screens/page_not_found.dart';
import 'package:drapp/screens/client/availability_screen.dart';
import 'package:drapp/screens/client/booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:drapp/screens/client/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  /* Our color codes: #0d173c 
  #0cdec8     #b7e1dd.   #f0f5f7 */
  // somthing is off with git
  // Develop

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
      title: 'Dr App',
      theme: ThemeData(
        primaryColor: const Color(0xFF0CDEC8),
        // accentColor: const Color(0xFFB7E1DD),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0CDEC8),
          secondary: const Color(0xFFB7E1DD),
        ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          elevation: 0,
          color: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black
          )
        )
      ),
      home: const AdminHomeScreen(),
      // initialRoute: '/', 
      routes: {
        // '/': (ctx) => const AuthScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        AdminHomeScreen.routeName: (ctx) => const AdminHomeScreen(),
        Availability.routeName: (ctx) => const Availability(),
        AppointmentsScreen.routeName: (ctx) => const AppointmentsScreen(),
        BookingScreen.routeName: (ctx) => const BookingScreen(),
        ProfileScreen.routeName: (ctx) => const ProfileScreen(),
        AddUser.routeName: (ctx) => AddUser(),
        UsersScreen.routeName: (ctx) => const UsersScreen(),
        AdminAvailabilityScreen.routeName: (ctx) => const AdminAvailabilityScreen(),
        AdminAppointmentsScreen.routeName: (ctx) => const AdminAppointmentsScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const PageNotFound());
      }
    );
  }
}

