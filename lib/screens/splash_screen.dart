import 'package:flutter/material.dart';
import 'package:todo_l/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
      
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => HomeScreen())));
      super.initState();
  }
  
 

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