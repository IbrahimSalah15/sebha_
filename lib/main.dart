// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp( Myapp());
}
 class Myapp extends StatefulWidget {
   const Myapp({Key? key}) : super(key: key);
 
   @override
   State<Myapp> createState() => _MyappState();
 }
  int counter = 0 , index = 0, round = 0;
   List<String> taspeeh_list = [
     "سُبْحَانَ اللَّهِ",
    "الْحَمْدُ لِلَّه ",
    "اللَّهُ أَكْبَرُ",
  ];

class _MyappState extends State<Myapp> {

   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         fontFamily: "Amiri",
       ),

       home: Scaffold(
         appBar: AppBar(
           title: Center(
             child: Text("فَذَكِّرْ إِن نَّفَعَتِ الذِّكْرَى"),),

           flexibleSpace: Image(
             image: AssetImage ("assets/Image01.jpeg"),
             fit: BoxFit.cover,
           ),
           ),
        body: Container(
           decoration: BoxDecoration(
           image: DecorationImage(image:AssetImage("assets/Image02.jpeg"),
             fit: BoxFit.cover
           ),
         ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 125,),
              Text(taspeeh_list[index],
                style: TextStyle(
                    color: Color(0xFFf9f3e2),
                    fontSize:45),),
           SizedBox(height: 10),
           Text("${counter + 1}",
            style: TextStyle(
              fontSize: 40,color: Color(0xFFf9f3e2),
            ),),
          SizedBox(height: 15,),
              InkWell(
                onTap: () {
                setState(() {
                  _incrementCounter();
                });
               },
               child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text("إضغط",
                      style: TextStyle(fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFf9f3e2),


                    ),

                  ),
                ),
                ),
              ),
              SizedBox(
                height: 85,
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 10,),
              TextButton(
                onPressed: (){
                setState(() {
                  _resetCounter();
                });
              },
                child:Text("البدء مرة أخرى",
                style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFf9f3e2),
                ),),
              ),

                SizedBox(width: 90,),
                Text(" رقم الدورة:  $round ",
                  style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFf9f3e2),
                  ),),

              ],
            ),
           ],
          ),
        ),

       ),
      ),
     );
   }
 }

 void _incrementCounter() {
  counter++;
  if (counter == 33) {
    counter = 0;
    index++;
    if (index == 3) {
      index = 0;
      round++;
    }
  }
 }

 void _resetCounter() {
  counter = 0;
  index = 0;
  round = 0;
 }