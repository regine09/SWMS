import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 130, 192, 132),
      body: SafeArea(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Hello Again!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
          ),
          Text('Welcome back, you\'ve been missed!',
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    
                  ),
                ),
              ),
            ),
          ),

        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:  Color.fromARGB(255, 203, 241, 203),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
           
            child: Center(
              child: Text('Sign In',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
              ),
          ),
          ),
        ),

        SizedBox(height: 25),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Not a member?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(' Register Now', 
            style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        ],
        )       
        ) ,
      ),
      );

      
  }
}