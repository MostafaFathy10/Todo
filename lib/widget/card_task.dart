import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTask extends StatelessWidget {
  const CardTask({super.key, required this.time, required this.content, required this.isChecked, this.onChanged, this.onPressed});
 final String time ; 
 final String content ; 
 final bool isChecked ;
 final  void Function(bool?)? onChanged ;
 final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      decoration: BoxDecoration(
     
        border: Border.all(color: Color.fromRGBO(214, 214, 214, 1) , width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
              activeColor: Color.fromRGBO(14, 52, 193, 1),
              value: isChecked,
              onChanged: onChanged
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(time , style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),),
              Text(content , style: TextStyle(
                decoration: isChecked? TextDecoration.lineThrough : null,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset( 
                  'assets/images/Vector.svg',
                   width: 25,  
                   ),
                   IconButton(onPressed: onPressed, icon: Icon(Icons.delete , color: Color.fromRGBO(14, 52, 193, 1),),)
                
              ],
            ),
          )
        ],
      ),
    );;
  }
}