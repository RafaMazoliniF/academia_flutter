import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/treino_carrosel.dart';

class DayPage extends StatelessWidget {
  final int dia;
  final dias = [
    "Segunda",
    "Terça",
    "Quarta",
    "Quinta",
    "Sexta",
    "Sábado",
    "Domingo"
  ];
  final treinos = [
    "Peito",
    "Costas",
    "Perna",
    "Ombro",
    "Braço",
    "Descanso",
    "Descanso"
  ];

  DayPage({super.key, required this.dia});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Academia',
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (() {
                Navigator.pop(context);
              }),
            ),
            backgroundColor: Color.fromARGB(255, 43, 42, 42),
            title: Text(
              dias[dia],
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            elevation: 0,
          ),
          body: Container(
            color: Color.fromARGB(255, 49, 49, 49),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      treinos[dia],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 72),
                  child: TreinoCarrossel(dia: dia),
                ),
              ],
            ),
          ),
        ));
  }
}
