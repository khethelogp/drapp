import 'package:flutter/material.dart';

class Link {
  final String id;
  final String title;
  final IconData icon;
  final Color color;

  const Link({
    required this.id,
    required this.title,
    required this.icon,
    this.color = Colors.orange,
  });
}