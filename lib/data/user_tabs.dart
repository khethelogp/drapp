import 'package:drapp/models/links.dart';
import 'package:flutter/material.dart';


const LINKS = [
  Link(
    id: 'c1',
    title: 'Availability',
    icon: Icons.calendar_today_rounded,
    route: '/availability',
    color: Colors.grey,
  ),
  Link(
    id: 'c2',
    title: 'Bookings',
    icon: Icons.bookmark_add,
    route: '/appointments',
    color: Colors.red,
  ),
  Link(
    id: 'c3',
    title: 'Profile',
    icon: Icons.account_circle,
    route: '/profile',
    color: Colors.orange,
  ),
];

const ADMIN_LINKS = [
  Link(
    id: 'a1',
    title: 'Add user',
    icon: Icons.person_add,
    route: '/add-user',
    color: Colors.grey,
  ),
  Link(
    id: 'a3',
    title: 'Users',
    icon: Icons.people,
    route: '/users',
    color: Colors.orange,
  ),
  Link(
    id: 'a4',
    title: 'Availability',
    icon: Icons.calendar_today_rounded,
    route: '/admin-availability',
    color: Colors.lightGreen,
  ),
  Link(
    id: 'a5',
    title: 'Bookings',
    icon: Icons.bookmark_add,
    route: '/admin-bookings',
    color: Colors.pink,
  ),
];