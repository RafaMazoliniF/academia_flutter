import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TreinoCarrossel extends StatelessWidget {
  final exercicios = [
    [
      [
        "Supino Inclinado",
        "assets/images/supino_inclinado.webp",
        "4 x (8 - 12)",
      ],
      [
        "Fly",
        "assets/images/fly.webp",
        "4 x (12 - 15)",
      ],
      [
        "Supino Reto Halter",
        "assets/images/supino_reto_halter.webp",
        "4 x (6 - 8)",
      ],
      [
        "Cross-Over",
        "assets/images/cross_over.gif",
        "4 x (10 - 12)",
      ],
      [
        "Flexão de Braço",
        "assets/images/flexao.webp",
        " 3 x até a falha",
      ],
    ],
    [
      [
        "Puxada Alta Aberta",
        "assets/images/puxada_alta_aberta.webp",
        "4 x (8 - 12)"
      ],
      [
        "Puxada Alta Triângulo",
        "assets/images/puxada_alta_triangulo.webp",
        "4 x (8 - 12)"
      ],
      [
        "Remada Curvada Aberta",
        "assets/images/remada_curvada_aberta.webp",
        "4 x (8 - 10)"
      ],
      [
        "Remada Baixa Triângulo",
        "assets/images/remada_baixa_triangulo.webp",
        "4 x (8 - 12)"
      ]
    ],
    [
      [
        "Agachamento Livre",
        "assets/images/agachamento_livre.webp",
        "4 x (6 - 8)"
      ],
      [
        "Leg Press 45",
        "assets/images/leg_press.webp",
        "4 x (8 - 10)",
      ],
      [
        "Stiff",
        "assets/images/stiff.gif",
        "4 x (10 - 12)",
      ],
      [
        "Cadeira Extensora",
        "assets/images/cadeira_extensora.webp",
        "4 x (12 - 15)"
      ],
      [
        "Mesa Flexora",
        "assets/images/mesa_flexora.webp",
        "4 x (12 - 15)",
      ],
    ],
    [
      [
        "Desenvolvimento Halter",
        "assets/images/desenvolvimento.webp",
        "4 x (8 - 10)",
      ],
      [
        "Elevação Lateral",
        "assets/images/elevacao_lateral.webp",
        "6 x (10 - 12)",
      ],
      [
        "Elevação Frontal Alternada",
        "assets/images/elevacao_frontal.gif",
        " 4 x (8 - 12)",
      ],
      [
        "Elevação Lateral Polia",
        "assets/images/elevacao_lateral_polia.gif",
        "4 x (10 - 12)",
      ],
      [
        "Crussifixo Invertido",
        "assets/images/crussifixo_invertido.webp",
        "6 x (10 - 12)",
      ],
    ],
    [
      [
        "Tríceps Francês",
        "assets/images/triceps_frances.webp",
        "4 x (8 - 10)",
      ],
      [
        "Tríceps Polia Corda",
        "assets/images/triceps_corda.webp",
        "4 x (10 - 12)",
      ],
      [
        "Tríceps Testa",
        "assets/images/triceps_testa.webp",
        "4 x (10 - 12)",
      ],
      [
        "Rosca Direta",
        "assets/images/rosca_direta.webp",
        "4 x (8 - 10)",
      ],
      [
        "Rosca Martelo",
        "assets/images/rosca_martelo.webp",
        "4 x (8 - 10)",
      ],
      [
        "Abdominal Supra",
        "assets/images/supra.webp",
        "4 x (15 - 20)",
      ],
      [
        "Abdominal Infra",
        "assets/images/infra.gif",
        "4 x (15 - 20)",
      ]
    ],
    [
      [
        "Adução de Palpebras",
        "assets/images/descanso.gif",
        "24 horas",
      ]
    ],
    [
      [
        "Adução de Palpebras",
        "assets/images/descanso.gif",
        "24 horas",
      ]
    ],
  ];

  final int dia;

  TreinoCarrossel({super.key, required this.dia});

  @override
  Widget build(BuildContext context) {
    List<Widget> carrossel = [];
    for (int i = 0; i < exercicios[dia].length; i++) {
      carrossel.add(
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 91, 1, 170),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(58, 0, 0, 0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 3.0)),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 1, 124),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        exercicios[dia][i][0],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36),
                    child: SizedBox(
                      height: 200,
                      child: Image.asset(exercicios[dia][i][1]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 64),
                    child: Center(
                      child: Text(
                        exercicios[dia][i][2],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: false,
            height: MediaQuery.of(context).size.height * 0.6,
            viewportFraction: 1),
        items: carrossel
            .map((e) => Stack(
                  fit: StackFit.expand,
                  children: <Widget>[e],
                ))
            .toList());
  }
}
