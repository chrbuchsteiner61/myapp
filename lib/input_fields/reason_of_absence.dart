import 'package:flutter/material.dart';

class ReasonOfAbsence extends StatelessWidget {
  final String reason;

  const ReasonOfAbsence({required this.reason, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(reason);
  }
}
