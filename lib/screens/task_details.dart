import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key, required this.headTitle});
  final String headTitle ; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , ),
          child: Column(
            children: [
              Container(
                      height: 80,
                      width: 150,
                      child: Image.asset('assets/images/Ellipse 9.png', fit: BoxFit.contain,
                      ),
                    ),
          SizedBox(
            height: 40,
          ) ,
                    Text('$headTitle' , style: TextStyle(
                      fontSize: 20 , 
                      fontWeight: FontWeight.w600 
                    ),) ,
                     SizedBox(
            height: 40,
          ) ,
                    Text('Wash my clothes ' , style: TextStyle(
                      fontSize: 20 , 
                      fontWeight: FontWeight.w400 
                    ),)
            ],
          ),
        ),
      ),
    );
  }
}