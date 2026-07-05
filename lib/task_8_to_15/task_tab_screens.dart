import 'package:flutter/material.dart';

class TabHomeScreen extends StatelessWidget {
  const TabHomeScreen({super.key});

  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 64, color: Colors.blue),
          SizedBox(height: 32),
          Text(
            'Home screen View',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class TabScreenSearch extends StatelessWidget {
  const TabScreenSearch({super.key});

  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 64, color: Colors.green),
          SizedBox(height: 32),
          Text(
            'Search screen View',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class TabNotificationScreen extends StatelessWidget {
  const TabNotificationScreen({super.key});

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications, size: 64, color: Colors.orange),
          SizedBox(height: 12),
          Text(
            'Notifications Screen View',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class TabProfileScreen extends StatelessWidget {
  const TabProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 64, color: Colors.purple),
          SizedBox(height: 12),
          Text(
            'Profile Screen View',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


class Task8_MainScreen extends StatelessWidget{
  const Task8_MainScreen({super.key});

  Widget build(BuildContext context){
return DefaultTabController(length: 4, 
child: Scaffold(
  appBar: AppBar(
          title: const Text('Task 8: Tab Navigation'),
          backgroundColor: Colors.blue.shade100,
          centerTitle: true, 
           
bottom: const TabBar(
  labelColor: Colors.blue,
  unselectedLabelColor: Colors.black,
  indicatorColor: Colors.blue,
  tabs: [
    Tab(icon: Icon(Icons.home),text: "Home"),
      Tab(icon: Icon(Icons.search),text: "Search"),
      Tab(icon: Icon(Icons.notifications),text: "Alerts"),
          Tab(icon: Icon(Icons.person),text: "Profile"),
  ],
),
  ),

body: const TabBarView(
          children: [
            TabHomeScreen(),         // Index 0
            TabScreenSearch(),       // Index 1
            TabNotificationScreen(),         // Index 2
            TabProfileScreen(),      // Index 3
          ],
        ),
),



);
  }
}
