import 'package:flutter/material.dart';

class SelectChild extends StatelessWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  const SelectChild({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(children: [
        const SizedBox(width: 30.0),
        const Text("Kind auswählen:"),
        const SizedBox(width: 10.0),
        DropdownButton<String>(
          value: selectedValue,
          hint: const Text('Dein Kind auswählen'),
          items: const [
            DropdownMenuItem(
              value: 'Tim Birkholz',
              child: Text('Tim'),
            ),
            DropdownMenuItem(
              value: 'Nils Birkholz',
              child: Text('Nils'),
            ),
          ],
          onChanged: onChanged,
        ),
      ]),
    );
  }
}
