import 'package:flutter/material.dart';
import 'package:mad_lab_assignment_2/task_1_to_6/task2_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

const MyApp({super.key});

Widget build(BuildContext context){
return MaterialApp(

title: 'MAD Lab Assignment',

debugShowCheckedModeBanner: false,
theme: ThemeData(
useMaterial3: true,
primarySwatch: Colors.blue,




),
home: const Task2HomeScreen(),

);

}


}