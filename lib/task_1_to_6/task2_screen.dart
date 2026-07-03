import 'package:flutter/material.dart';
import 'package:mad_lab_assignment_2/task_1_to_6/task2_profilescreen.dart' show Task2DisplayScreen, Task2ProfileScreen;

class Task2HomeScreen extends StatefulWidget {
  const Task2HomeScreen({super.key});

  @override
  State<Task2HomeScreen> createState() => _Task2HomeScreenState();
}




class _Task2HomeScreenState extends State<Task2HomeScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HOME SCREEN'), 
        backgroundColor: Colors.blue.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: name,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 28),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Task2ProfileScreen(), 
                    settings: RouteSettings(
                      arguments: {
                        'emailValue': email.text,
                        'nameValue': name.text,
                      },
                    ),
                  ),
                );
                email.clear();
                name.clear();
              },
              child: const Text('Submit'),

              
            ),
            
          ],
        ),
      ),
    );
  }
}