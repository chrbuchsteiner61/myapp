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
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Entschuldigungszeitraum",
                style: Theme.of(context).textTheme.displayMedium!),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 300.0,
              child: TextField(
                style: Theme.of(context).textTheme.displayMedium!,
                controller: _controller,
                decoration: InputDecoration(
                  labelText: '"für den ..." oder "für die Zeit von bis"',
                  labelStyle: Theme.of(context).textTheme.displaySmall!,
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              widget.onSubmitted(_controller.text); // Send value to parent
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            child: const Text('eingeben'),
          ),
        ],
      ),
    );
  }
}
