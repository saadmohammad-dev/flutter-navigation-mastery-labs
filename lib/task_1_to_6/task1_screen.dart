import 'package:flutter/material.dart';
import 'package:mad_lab_assignment_2/task_1_to_6/task1_display.dart';

class Task1HomeScreen extends StatefulWidget {
  const Task1HomeScreen({super.key});

  @override
  State<Task1HomeScreen> createState() => _Task1HomeScreenState();
}






class _Task1HomeScreenState extends State<Task1HomeScreen> {


  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Task 1: Home Screen'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter First Number here. ',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: num2,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                labelText: 'Enter Second Number here. ',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 28),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Task1DisplayScreen(
                      receivedNum1: num1.text,
                      receivedNum2: num2.text,
                    ),
                  ),
                );

               
              },
              child: const Text('Send to Display screen -->'),
            ),
          ],
        ),
      ),
    );
  }
}
