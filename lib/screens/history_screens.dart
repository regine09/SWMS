import 'package:flutter/material.dart';
import 'package:smws/utilities/pick_up.dart';

class HistoryScreens extends StatelessWidget {
  const HistoryScreens({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('History'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0)),
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 130, 192, 132),Color.fromARGB(255, 203, 241, 203)],
              begin: Alignment.bottomCenter,
              end:Alignment.topCenter
               )
            )
        )
      ),


      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HISTORY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            // Add other widgets here as needed
          ],
        ),
      ),
    );
  }
}
