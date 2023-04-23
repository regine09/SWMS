import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 130, 192, 132),
      body: Center(child:Text('Location Page',style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold, 
      ),),),
    );
  }
}