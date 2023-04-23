import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smws/intro_screen/page1.dart';
import 'package:smws/intro_screen/page2.dart';
import 'package:smws/intro_screen/page3.dart';
import 'package:smws/login.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onLastPage = (index ==2);
            });
          },
          children:[
          page1(),
          page2(),
          page3(),
        ],
       ),



       Container(
        alignment: Alignment(0, 0.85),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            GestureDetector(
              onTap: (){
                _controller.jumpToPage(2);
              },
              child: const Text('Skip',
              style: TextStyle(fontWeight: FontWeight.bold),
              
              )
              ),

            SmoothPageIndicator(controller: _controller, count: 3),
            onLastPage
            ? GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginPage();
                  },
                ),
              );
            },
              child: Text('Done',
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              )
              : GestureDetector(
               onTap: () {
                _controller.nextPage(duration: Duration(microseconds: 500), 
                curve: Curves.easeIn,
                );
              },
              child: Text('Next',
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ),
          ],
         ),
       ),
      ], 
    ),
    );
  }
}

