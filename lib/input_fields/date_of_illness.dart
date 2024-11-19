import 'package:flutter/material.dart';

class DateOfIllness extends StatelessWidget {
  final String aDate;

  const DateOfIllness({super.key, required this.aDate});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Enter a search term',
  ),
    );
  }
}
