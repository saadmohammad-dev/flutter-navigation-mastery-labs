import 'package:flutter/material.dart';

class Task2ProfileScreen extends StatelessWidget {
  const Task2ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String userEmail = args['emailValue'] ?? '';
      String userName = args['nameValue'] ?? '';


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PROFILE SCREEN'), 
        
        backgroundColor: Colors.blue.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Row(
              children: [
                const Text(
                  'Email:   ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  userEmail,
                  style: const TextStyle(fontSize: 22, fontStyle: FontStyle.italic), 
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                const Text(
                  'Name:   ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  userName,
                  style: const TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
                ),
              ],
            ),
            const SizedBox(height: 40),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                child: const Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}