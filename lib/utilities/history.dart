import 'package:flutter/material.dart';
import 'package:smws/homepage/screen1.dart';
import 'package:smws/screens/pickup_screens.dart';
import 'package:smws/utilities/history.dart';

class PickupButton extends StatelessWidget {
  const PickupButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>PickupScreens()));
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
          child: Image.asset('lib/images/image9.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
