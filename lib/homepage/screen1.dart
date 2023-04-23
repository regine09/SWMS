import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smws/utilities/article1.dart';
import 'package:smws/utilities/article2.dart';
import 'package:smws/utilities/article3.dart';
import 'package:smws/utilities/pick_up.dart';
import 'package:smws/utilities/history.dart';
import 'package:smws/utilities/rewards.dart';



class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {

final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 130, 192, 132),
        body: SafeArea(

        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,
            vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
                'Smart Waste \nManagement System',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),
                ),

                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle),
                  child:Icon(Icons.add),
                ),
             ],
            ), 
          ),

          SizedBox(height:1),

          Text('Articles'),

          SizedBox(height: 8,),

          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                article1(),
              article2(),
              article3(),
            ],),
          ),

          SizedBox(height: 20),

          SmoothPageIndicator(controller: _controller, count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.grey.shade800,
          ),
          ),

          SizedBox(height: 15),

          Container(
            height: 30,
            width: 140,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                'Points: 0',
                style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold),
                ),
             ]
           )
          ),

          SizedBox(height:20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HistoryButton(),
                PickupButton(),
                RewardsButton(),
                
            ],
            ),

          ),

          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('  History',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Text('   Pick Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Text('   Rewards',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ]
                
          )  ) ],
      )
    )
    
    );
  }
}
