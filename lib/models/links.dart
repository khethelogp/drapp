import 'package:flutter/material.dart';

class Link {
  final String id;
  final String title;
  final Color color;

  const Link({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}