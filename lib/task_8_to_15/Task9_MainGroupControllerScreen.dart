import 'package:flutter/material.dart';
import 'tab_group_hosts.dart';

class Task9_MainGroupControllerScreen extends StatelessWidget {
  const Task9_MainGroupControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Task 10: Grouped Tabs'),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
          bottom: const TabBar(
            labelColor: Colors.blue,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.looks_one), text: "Group 1 (S1/S2)"),
              Tab(icon: Icon(Icons.looks_two), text: "Group 2 (S3/S4)"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabOneHost(), 
            TabTwoHost(), 
          ],
        ),
      ),
    );
  }
}