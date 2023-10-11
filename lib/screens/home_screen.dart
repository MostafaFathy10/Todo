import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_l/screens/task_details.dart';
import 'package:todo_l/widget/card_task.dart';

class HomeScreen extends StatefulWidget {
HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  List todoList = [
 
 ['add task 1' , 'i will bCK HOME' , false]
  
   
  ] ;
  var titleController = TextEditingController() ; 
  var descController = TextEditingController() ;
  void checkBocChaned(bool? value , int index){
    setState(() {
      todoList[index][2] = !todoList[index][2] ;
    });
  } 
 void saveNewTask(){
   setState(() {
     todoList.add([titleController.text ,descController.text , false ]); 
     titleController.clear()
;        });
 }
 void removeTask(int index){
  setState(() {
    todoList.removeAt(index);
  });
 }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 150,
                  child: Image.asset('assets/images/Ellipse 9.png', fit: BoxFit.contain,
                  ),
                ),
                 SizedBox(
                  height: 20,
                 ),
                Container(
                  color: Color.fromRGBO(16, 123, 250, 0.14),
                  child: Text('Good Evening Becky' , style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(14, 52, 193, 1),
                  ),),
                ),
                SizedBox(
                  height: 30,
                ),
              DatePicker(
          DateTime.now(),
          height: 100,
          initialSelectedDate: DateTime.now(),
          selectionColor: Color.fromRGBO(14, 52, 193, 1),
          deactivatedColor: Color.fromRGBO(6, 27, 130, 1),
          selectedTextColor: Colors.white,
          onDateChange: (date) {
            // New date selected
            // setState(() {
            //   _selectedValue = date;
            // });
          },
              ),
              SizedBox(
          height: 30,
              ),
              Text('Today’s tasks' , style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(68, 68, 68, 1),
              ),
              ),
              SizedBox(
          height: 20,
              ),
   todoList.isEmpty ? Center(child: Text('No Tasks Today')) :
            SizedBox(
              height: 400,
              child:   ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (ctx , index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ( (context) =>  TaskDetails(headTitle: todoList[index][0],))));                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CardTask(content: todoList[index][1], isChecked: todoList[index][2], time: todoList[index][0], onChanged: (value) =>checkBocChaned(value ,index) , onPressed: (){
                      removeTask(index);
                    } ,),
                  ),
                ) ;

              }),
            )
            ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(14, 52, 193, 1),
        onPressed: () {
           showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 20),
                child: Container(
                  height: 400,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        ElevatedButton.icon(
                          style: ButtonStyle(
                          foregroundColor:MaterialStateProperty.all(Color.fromRGBO(14, 52, 193, 1))
                          ),
                          onPressed: (){
                            saveNewTask(); 
                            Navigator.of(context).pop() ;                          }, icon: Icon(
                          Icons.add
                        ), label: Text('Add'))
                      ],) , 
                      Text('Title' , style: TextStyle(
                        fontSize: 20  , 
                        fontWeight: FontWeight.w400
                      ),) , 
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(
border:  OutlineInputBorder()
                        ),
                      ) , 
                     SizedBox(
                      height:20 ,
                     ) ,
                      Text('Description' , style: TextStyle(
                        fontSize: 20  , 
                        fontWeight: FontWeight.w400
                      ),) , 
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:EdgeInsets.symmetric(vertical: 50),
border:  OutlineInputBorder()
                        ),
                      ) , 
                    
                    ],
                  ),
                  
                ),
              );
            },
          );
        } , child: Icon(Icons.add , size: 40, color: Color.fromRGBO(255, 255, 255, 1),),),
    );
  }

  // Container CardTask(String time , String content , bool isChecked , Widget widget) {
  //   return 
  // }
}