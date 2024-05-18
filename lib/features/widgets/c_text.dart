import 'package:flutter/material.dart';

class CText extends StatelessWidget {

  final String title;
  final TextStyle style;
  const CText({super.key, required this.title, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(title, style:style ,);;
  }
}
