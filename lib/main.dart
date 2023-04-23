import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smws/homepage.dart';
import 'package:smws/intro.dart';
import 'login.dart';



void main(){
  runApp(smartWasteManagementSystem());
}

class smartWasteManagementSystem extends StatelessWidget {
   smartWasteManagementSystem ({super.key});

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Waste Management System',
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
