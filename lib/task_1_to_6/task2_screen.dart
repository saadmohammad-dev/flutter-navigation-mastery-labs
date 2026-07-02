import 'package:flutter/material.dart';

// A simple data model class to hold our profile info together
class UserProfileData {
  final String name;
  final String email;

  UserProfileData({required this.name, required this.email});
}

// --- HOME SCREEN ---
class Task2HomeScreen extends StatefulWidget {
  const Task2HomeScreen({super.key});

  @override
  State<Task2HomeScreen> createState() => _Task2HomeScreenState();
}

class _Task2HomeScreenState extends State<Task2HomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _submitData() {
    // 1. Bundle the text field data into our custom object
    final userData = UserProfileData(
      name: _nameController.text,
      email: _emailController.text,
    );

    // 2. Navigate using RouteSettings arguments configuration field
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Task2ProfileScreen(),
        // RouteSettings passes data independently of the widget constructor
        settings: RouteSettings(
          arguments: userData,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 2: Home Screen')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Enter Full Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Enter Email Address',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _submitData,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text('Submit to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

// --- PROFILE SCREEN ---
// --- PROFILE SCREEN ---
class Task2ProfileScreen extends StatelessWidget {
  const Task2ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Extracting the dynamic data bundle securely from ModalRoute settings
    final args = ModalRoute.of(context)!.settings.arguments as UserProfileData;

    return Scaffold(
      appBar: AppBar(title: const Text('Task 2: Profile Screen')),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24.0),
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'User Profile Data',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
                const Divider(height: 24),
                Text(
                  'Name: ${args.name}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 12),
                Text(
                  'Email: ${args.email}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 24),
                
                // --- ADDED DEDICATED BACK BUTTON HERE ---
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Pops this screen off the navigation stack to go back
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Go Back to Home'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.withOpacity(0.1),
                      foregroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}