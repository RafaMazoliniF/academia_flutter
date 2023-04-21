import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/day_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Academia',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 43, 42, 42),
            title: const Text(
              "Academia",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            elevation: 0,
          ),
          body: Container(
            color: Color.fromARGB(255, 49, 49, 49),
            child: ListView(children: [
              Column(
                children: const [
                  DayCard(dia: 0),
                  DayCard(dia: 1),
                  DayCard(dia: 2),
                  DayCard(dia: 3),
                  DayCard(dia: 4),
                  DayCard(dia: 5),
                  DayCard(dia: 6),
                ],
              ),
            ]),
          ),
        ));
  }
}
