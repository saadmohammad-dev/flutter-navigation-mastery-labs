import 'package:flutter/material.dart';
import 'package:mad_lab_assignment_2/task6_screens.dart';
import 'task_1_to_6/task1_screen.dart'; 
import 'task_1_to_6/task2_screen.dart';
import 'task_1_to_6/task3_screens.dart';
import 'package:mad_lab_assignment_2/task_1_to_6/task4_screens.dart';
import 'package:mad_lab_assignment_2/task_1_to_6/task5_screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAD Lab Assignment 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF7FFFD4), // Aquamarine look matching your screenshot
      ),
      
      // Centralized Navigation System
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
       '/task1': (context) => const Task1HomeScreen(), 
        
        // Placeholders for remaining tasks to prevent compile errors
          '/task2': (context) => const Task2HomeScreen(),
        '/task3': (context) => const Task3InputScreens(),
        '/task4': (context) => const Task4MainScreen(),
        '/task5': (context) => const Task5HomeScreen (),
        '/task6': (context) => const  Task6HomeScreen(),
        '/task7': (context) => const PlaceholderScreen(title: "Task 7"),
        '/task8': (context) => const PlaceholderScreen(title: "Task 8"),
        '/task9': (context) => const PlaceholderScreen(title: "Task 9"),
        '/task10': (context) => const PlaceholderScreen(title: "Task 10"),
        '/task11': (context) => const PlaceholderScreen(title: "Task 11"),
        '/task12': (context) => const PlaceholderScreen(title: "Task 12"),
        '/task13': (context) => const PlaceholderScreen(title: "Task 13"),
        '/task14': (context) => const PlaceholderScreen(title: "Task 14"),
        '/task15': (context) => const PlaceholderScreen(title: "Task 15"),

      },
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          color: const Color(0xFF98FB98).withOpacity(0.6), 
          child: const Text(
            'MAD Lab 2 Dashboard',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black87),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.4,
          ),
          itemCount: 15,
          itemBuilder: (context, index) {
            final int taskNumber = index + 1;
            return Card(
              color: const Color(0xFFEDF1F2), 
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xFFE0E0E0), width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () => Navigator.pushNamed(context, '/task$taskNumber'),
                child: Center(
                  child: Text(
                    'Task $taskNumber',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title is under construction.')),
    );
  }
}