import 'package:flutter/material.dart';

class DateOfIllness extends StatefulWidget {
  final Function(String) onSubmitted; // Callback to parent

  const DateOfIllness({required this.onSubmitted, super.key});

  @override
  DateOfIllnessState createState() => DateOfIllnessState();
}

class DateOfIllnessState extends State<DateOfIllness> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText:
                  'Entschuldigungszeitraum für den oder für die Zeit von bis',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              widget.onSubmitted(_controller.text); // Send value to parent
            },
            child: const Text('eingeben'),
          ),
        ],
      ),
    );
  }
}
