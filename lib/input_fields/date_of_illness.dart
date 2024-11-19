import 'package:flutter/material.dart';

class DateOfIllness extends StatelessWidget {
  final String aDate;

  const DateOfIllness({super.key, required this.aDate});

  @override
  Widget build(BuildContext context) {
    return Text(aDate);
  }
}
