import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myapp/input_fields/date_of_illness.dart';
import 'package:myapp/input_fields/reason_of_absence.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/appology_page.dart';

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
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, String> allElements = HashMap();
    allElements['parents'] = "Tanja Birkholz und Christian Buchsteiner";
    allElements['homeAdress'] = "Wacholderweg 15a, 61440 Oberursel";
    allElements['communication'] =
        "Tel. 01516 144 80 98, mail: chrbuchsteiner@gmail.com";
    allElements['schoolAdress'] = "Gymnasium Oberursel";
    allElements['teacher'] = "Frau Brendel";

    allElements['appologyDate'] = "12.12.24";
    allElements['childName'] = "Tim Birkholz";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const DateOfIllness(aDate: "12.12.24"),
          const ReasonOfAbsence(reason: "something"),
          FloatingActionButton(onPressed: () async {
            // allElements['appologyDate'] = getAppologyDate();
            //  allElements['childName'] = getChildName();

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AppologyPage(
                  allElements: allElements,
                ),
              ),
            );
          } //
              ),
        ],
      ),
    );
  }
}
