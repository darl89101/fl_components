import 'package:flutter/material.dart';

class MenuOption {
  final String url;
  final String name;
  final Widget screen;
  final IconData icon;

  MenuOption(
      {required this.url,
      required this.name,
      required this.screen,
      required this.icon});
}
