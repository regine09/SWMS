import 'package:flutter/material.dart';
import 'package:smws/homepage/screen1.dart';
import 'package:smws/screens/rewards_screens.dart';
import 'package:smws/utilities/rewards.dart';



class RewardsButton extends StatelessWidget {
  const RewardsButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>RewardScreens()));
      },
      child: Container(
        height: 70,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset('lib/images/image8.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
