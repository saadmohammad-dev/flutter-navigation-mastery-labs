import 'package:flutter/material.dart';

class Task12GroupedDrawersScreen extends StatefulWidget {
  const Task12GroupedDrawersScreen({super.key});

  @override
  State<Task12GroupedDrawersScreen> createState() => _Task12GroupedDrawersScreenState();
}

class _Task12GroupedDrawersScreenState extends State<Task12GroupedDrawersScreen> {
  //  Tracks which screen is active (0 to 3)
  int _currentScreenIndex = 0;

  //  Tracks which Drawer layout to show (1 or 2)
  int _activeDrawerNumber = 1;

  // Strictly 4 standalone screens
  final List<Widget> _screens = [
    const Center(child: Text('Screen 1 (Inside Drawer 1)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue))),
    const Center(child: Text('Screen 2 (Inside Drawer 1)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.cyan))),
    const Center(child: Text('Screen 3 (Inside Drawer 2)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange))),
    const Center(child: Text('Screen 4 (Inside Drawer 2)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
  ];

  // Titles for the AppBar
  final List<String> _titles = ['Screen One', 'Screen Two', 'Screen Three', 'Screen Four'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentScreenIndex]),
        backgroundColor: Colors.blue.shade100,
        centerTitle: true,
      ),

      // Displays the selected screen layout
      body: Column(
        children: [

          //  Top switch bar to jump between Drawer Group 1 and Drawer Group 2
          Container(
            color: Colors.grey.shade200,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => setState(() => _activeDrawerNumber = 1),
                  icon: const Icon(Icons.looks_one),
                  label: const Text('Use Drawer 1'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _activeDrawerNumber == 1 ? Colors.blue.shade200 : null,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => setState(() => _activeDrawerNumber = 2),
                  icon: const Icon(Icons.looks_two),
                  label: const Text('Use Drawer 2'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _activeDrawerNumber == 2 ? Colors.orange.shade200 : null,
                  ),
                ),
              ],
            ),
          ),
          
          // The actual dynamic screen body content area
          Expanded(child: _screens[_currentScreenIndex]),
        ],
      ),

      // Conditional Drawer Layout Configuration based on Grouping
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header showing which Drawer configuration group is currently active
            DrawerHeader(
              decoration: BoxDecoration(
                color: _activeDrawerNumber == 1 ? Colors.blue.shade700 : Colors.orange.shade700,
              ),
              child: Text(
                'Drawer Navigation ${_activeDrawerNumber == 1 ? "Group 1" : "Group 2"}',
                style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            // 📂 IF DRAWER 1 IS ACTIVE: Show Screen 1 and Screen 2 options
            if (_activeDrawerNumber == 1) ...[
              ListTile(
                leading: const Icon(Icons.looks_one, color: Colors.blue),
                title: const Text('Go to Screen 1'),
                selected: _currentScreenIndex == 0, // Comparison check
                onTap: () {
                  setState(() => _currentScreenIndex = 0); // Memory assignment action
                  Navigator.pop(context); // Close side drawer
                },
              ),
              ListTile(
                leading: const Icon(Icons.looks_two, color: Colors.cyan),
                title: const Text('Go to Screen 2'),
                selected: _currentScreenIndex == 1,
                onTap: () {
                  setState(() => _currentScreenIndex = 1);
                  Navigator.pop(context);
                },
              ),
            ],

            //  IF DRAWER 2 IS ACTIVE: Show Screen 3 and Screen 4 options
            if (_activeDrawerNumber == 2) ...[
              ListTile(
                leading: const Icon(Icons.looks_3, color: Colors.orange),
                title: const Text('Go to Screen 3'),
                selected: _currentScreenIndex == 2,
                onTap: () {
                  setState(() => _currentScreenIndex = 2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.looks_4, color: Colors.purple),
                title: const Text('Go to Screen 4'),
                selected: _currentScreenIndex == 3,
                onTap: () {
                  setState(() => _currentScreenIndex = 3);
                  Navigator.pop(context);
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}