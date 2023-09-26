import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,

          ),
          Spacer(),
          Container(
            width: 500,
            height: 200,
            child: Image.asset('assets/images/Ellipse 9.png',
            fit: BoxFit.contain,
            ),
          ),
          Spacer(),
          Text('ToDo List' , style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
      
        
      
    
  }
}