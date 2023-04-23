import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class article2 extends StatelessWidget {
  const article2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: InkWell(
        onTap: () {
          launch('https://evreka.co/blog/what-is-smart-waste-management/'); // Launch URL when image is tapped
        },
        child: Container(
          width: 350,
          height: 170,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 226, 231, 225),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'lib/images/image11.png',
                  height: 200,
                  width: 350,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 16,
                child: Text(
                  'ARTICLE',
                  style: TextStyle(
                    color: Color.fromARGB(255, 179, 250, 182),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),  
                ),
              ),
              Positioned(
                bottom: 10,
                right: 16,
                child: Text(
                  'read...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 179, 250, 182),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                    
          
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
