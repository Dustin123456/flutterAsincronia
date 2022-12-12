import 'package:flutter/material.dart';
import 'dart:async';
import '../widgets/waiting_widget.dart';


Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Barra(),
    );
  }
}



// class _BarraState extends State<Barra> {
//   int ferrari = 0;
//   int verdaderoferrari = 0;
//   int hyundai = 0;
//   int fisherprice = 0;
//   @override
//   Widget build(BuildContext context) {        
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Autos asincrónicos'),
//       ),
//       floatingActionButton: FloatingActionButton(
// 				backgroundColor: Colors.purple,
// 				child: Icon( Icons.accessibility_new),
// 				onPressed: ()async {
// 				  ferrari = await MockApi().getFerrariInteger();
//           hyundai = await MockApi().getHyundaiInteger();
//           fisherprice = await MockApi().getFisherPriceInteger();
// 					setState(() {  
//             });
// 				},
//       ),
//       body: Center(
//         child: AnimatedContainer(
//           duration: Duration (milliseconds: 1000),
//           width: 370,
//           height: 70,
//           decoration: BoxDecoration(
//             color: Color.fromRGBO(ferrari , hyundai, fisherprice, 1)
//           ),
//       ),
//     ),
//     );
//   }
// }



