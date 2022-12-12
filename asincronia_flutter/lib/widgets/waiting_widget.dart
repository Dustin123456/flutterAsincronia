import 'package:flutter/material.dart';
import 'dart:async';
import '../services/mockapi.dart';


class Barra extends StatefulWidget {
  @override
  State<Barra> createState() => _BarraState();
}

class _BarraState extends State<Barra> {
  int valorRandom = 0;
  double ferrariAncho = 0;
  int ferrariTiempo = 0;
  int ferrari = 0;
  int valorRandom2 = 0;
  double hyundaiAncho = 0;
  int hyundaiTiempo = 0;
  int hyundai = 0;
  int valorRandom3 = 0;
  double fischerAncho = 0;
  int fischerTiempo = 0;
  int fischer = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 235, 235),
        body: FractionallySizedBox(
          widthFactor: 2,
          heightFactor: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text("FERRARI"),
                  FloatingActionButton(
                    onPressed: () async {
                      setState(() {
                        ferrariAncho = 1000;
                        ferrariTiempo = 1;
                      });
                      ferrari = await MockApi().getFerrariInteger();
                      setState(() {
                        valorRandom = ferrari;
                        ferrariAncho = 0;
                        ferrariTiempo = 0;
                      });
                    },
                    backgroundColor: Colors.yellow,
                    child: const Icon(
                      Icons.car_rental,
                      color: Colors.black,
                    ),
                  ),
                  AnimatedContainer(
                    width: ferrariAncho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.yellow),
                    duration: Duration(seconds: ferrariTiempo),
                  ),
                  Text(
                    valorRandom.toInt().toString(),
                    style: const TextStyle(color: Colors.yellow, fontSize: 25.0),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("HYUNDAI"),                  
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          hyundaiAncho = 1000;
                          hyundaiTiempo = 3;
                        });
                        hyundai = await MockApi().getHyundaiInteger();
                        setState(() {
                          valorRandom2 = hyundai;
                          hyundaiAncho = 0;
                          hyundaiTiempo = 0;
                        });
                      },
                      backgroundColor: Colors.blue,
                      child: const Icon(
                        Icons.car_repair,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: hyundaiAncho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.blue),
                    duration: Duration(seconds: hyundaiTiempo),
                  ),
                  Text(
                    valorRandom2.toInt().toString(),
                    style:
                        const TextStyle(color: Colors.blue, fontSize: 25.0),
                  )
                ],
              ),
              Column(
                children: [
                  const Text("FISHER PRICE"),                
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          fischerAncho = 1000;
                          fischerTiempo = 10;
                        });
                        fischer = await MockApi().getFisherPriceInteger();
                        setState(() {
                          valorRandom3 = fischer;
                          fischerAncho = 0;
                          fischerTiempo = 0;
                        });
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.car_crash,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: fischerAncho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.red),
                    duration: Duration(seconds: fischerTiempo),
                  ),
                  Text(
                    valorRandom3.toInt().toString(),
                    style: const TextStyle(color: Colors.red, fontSize: 25.0),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
