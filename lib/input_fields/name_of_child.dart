import 'package:flutter/material.dart';

const List<String> ourKids = <String>['Tim Birkholz', 'Nils Birkholz'];

class NameOfChild extends StatefulWidget {
  final String aName;
  const NameOfChild({super.key, required this.aName});

  @override
  State<NameOfChild> createState() => NameOfChildState();
}

class NameOfChildState extends State<NameOfChild> {
  String dropdownValue = ourKids.first;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down_circle_rounded),
        elevation: 16,
        style: const TextStyle(color: Colors.blue),
        underline: const SizedBox(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: ourKids.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
