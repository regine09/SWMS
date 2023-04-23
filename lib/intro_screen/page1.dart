import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, 0.50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
           Color.fromARGB(255, 130, 192, 132),
           Color.fromARGB(255, 203, 241, 203),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        )
      ),

      padding: EdgeInsets.only(top: 50,  left: 30, right: 30, bottom: 30),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 

        children:[ 

          Container(
            alignment: Alignment(0, -0.50),
            child: Title(color: Colors.black, 
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('WELCOME', style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.black,
        
              ) ),
            ],
          ))
          ) ,

          Container(
            height: 40,
          ),


          Image.asset('lib/images/image1.png',
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,  
          ),

          Container(
            height: 40,
          ),

          Container(
            alignment: Alignment(1, -0.70),
            child: const  Text(' Welcome to our innovative smart waste management app, where we strive to create a sustainable future by revolutionizing the way we manage waste',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.normal,
            color: Colors.black,
                  ),
                  ),
          ),
        ] 
      ),
    );
  }
}