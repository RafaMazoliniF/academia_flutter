import 'package:flutter/material.dart';
import 'package:flutter_application_1/day_page.dart';

class DayCard extends StatelessWidget {
  final int dia;
  const DayCard({super.key, required this.dia});
  static const dias = [
    "Segunda",
    "Terça",
    "Quarta",
    "Quinta",
    "Sexta",
    "Sábado",
    "Domingo"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 113, 27, 199),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 3.0)),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    dias[dia],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 91, 1, 170))),
                      child: Text(
                        "Abrir",
                        style: TextStyle(
                          color: Color.fromARGB(255, 217, 164, 240),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DayPage(dia: dia)),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
