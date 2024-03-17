import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlertWidget extends StatelessWidget {
  final String title;
  final Widget content;
  final IconData? icon;
  const CustomAlertWidget({super.key, required this.title, required this.content, this.icon});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Icon(icon),
      title: Text(title),
      content: content,
    );
  }
}