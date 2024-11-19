import 'package:flutter/material.dart';
import 'package:myapp/input_fields/date_of_illness.dart';
import 'package:myapp/input_fields/reason_of_absence.dart';

void main() {
  runApp(const MyAppology());
}

class MyAppology extends StatelessWidget {
  const MyAppology({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const StartingPage(title: 'School appology'),
    );
  }
}

class StartingPage extends StatefulWidget {
  const StartingPage({super.key, required this.title});

  final String title;

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DateOfIllness(aDate: '12.12.2023'),
            ReasonOfAbsence(reason: 'Der Grund'),
          ],
        ),
      ),
    );
  }
}
