import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:smws/homepage/screen1.dart';
import 'package:smws/homepage/screen2.dart';
import 'package:smws/homepage/screen3.dart';
import 'package:cupertino_icons/cupertino_icons.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List Screens = [
    screen1(),
    screen2(),
    screen3(),
    
   
    
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 130, 192, 132),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 130, 192, 132),
        animationDuration: Duration(milliseconds: 300),
        index: _selectedIndex,
        items: const [
        Icon(Icons.home),
        Icon(Icons.qr_code_scanner_outlined),
        Icon(Icons.settings),
      ],
      onTap: (index){
        setState(() {
          _selectedIndex = index;
        });
      }
      ),
      body: Screens[_selectedIndex],

      
    );
  }
}