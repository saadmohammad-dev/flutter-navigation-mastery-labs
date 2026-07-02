import 'package:flutter/material.dart';
class Task1DisplayScreen  extends StatefulWidget{
final String receivedNum1;
final String receivedNum2;

const Task1DisplayScreen({
  super.key,
  required this.receivedNum1,
  required this.receivedNum2,
  
});



@override
  State<Task1DisplayScreen> createState()=> _Task1DisplayScreenState();
}
class _Task1DisplayScreenState extends State<Task1DisplayScreen>{

  

 late TextEditingController dispContr1;
  late TextEditingController dispContr2; 

  @override
  void initState(){
    super.initState();

    dispContr1=TextEditingController(text: widget.receivedNum1);
        dispContr2=TextEditingController(text: widget.receivedNum2);

  }

  @override
  Widget build(BuildContext context){
return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: const Text('Task 1: Display Screen'),
  backgroundColor: Colors.green.shade100,
),
body: Padding(padding: const EdgeInsets.all(200.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  TextField(
 controller: dispContr1,
 decoration: const InputDecoration(
  labelText: 'Recieved Number 1',
 ),
  ),
  const SizedBox(height: 20),


 TextField(
 controller: dispContr2,
 decoration: const InputDecoration(
  labelText: 'Recieved Number 2',
 ),
  ),
  const SizedBox(height: 29),


        ElevatedButton(onPressed: ()=>Navigator.pop(context),
        
         child: Text("<-  Back"),),

],

),


),


);


  }
}

