import 'package:flutter/material.dart';

class Task11DrawerScreen extends StatefulWidget {
  const Task11DrawerScreen({super.key});

  @override
  State<Task11DrawerScreen> createState() => _Task11DrawerScreenState();
}

class _Task11DrawerScreenState extends State<Task11DrawerScreen> {
  int _currentScreenIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.dashboard, size: 64, color: Colors.blue), SizedBox(height: 12), Text('Dashboard Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))])),
    const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.shopping_cart, size: 64, color: Colors.green), SizedBox(height: 12), Text('Orders Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))])),
    const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.settings, size: 64, color: Colors.orange), SizedBox(height: 12), Text('Settings Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))])),
    const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.help, size: 64, color: Colors.purple), SizedBox(height: 12), Text('Support Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))])),
  ];

  final List<String> _titles = [
    'Dashboard Control',
    'My Orders',
    'App Settings',
    'Help & Support',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentScreenIndex]),
        backgroundColor: Colors.blue.shade100,
        centerTitle: true,
      ),
      
      body: _screens[_currentScreenIndex],

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, 
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade700),
              accountName: const Text('Saad Mohammad', style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: const Text('saad@techstore.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.blue),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.blue),
          title: Text(_titles[1]),            
             selected: _currentScreenIndex == 0,
              onTap: () {
                setState(() => _currentScreenIndex = 0);
                Navigator.pop(context); // Closes the drawer autom    
              },
            ),

            ListTile(
              leading: const Icon(Icons.shopping_cart, color: Colors.green),
              title: const Text('Orders'),
              selected: _currentScreenIndex == 1,
              onTap: () {
                setState(() => _currentScreenIndex = 1);
                Navigator.pop(context);
              },
            ),

            // Sidebar Menu Item 3: Settings
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.orange),
              title: const Text('Settings'),
              selected: _currentScreenIndex == 2,
              onTap: () {
                setState(() => _currentScreenIndex = 2);
                Navigator.pop(context);
              },
            ),

            // Sidebar Menu Item 4: Support
            ListTile(
              leading: const Icon(Icons.help, color: Colors.purple),
              title: const Text('Support'),
              selected: _currentScreenIndex == 3,
              onTap: () {
                setState(() => _currentScreenIndex = 3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}