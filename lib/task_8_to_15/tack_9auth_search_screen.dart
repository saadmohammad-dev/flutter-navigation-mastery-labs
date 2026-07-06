import 'package:flutter/material.dart';
class Task9AuthSearchScreen extends StatefulWidget{

  const Task9AuthSearchScreen({super.key});
State<Task9AuthSearchScreen> createState() => _Task9AuthSearchScreen();
}

class _Task9AuthSearchScreen extends State<Task9AuthSearchScreen>{
  bool _isSignedIn = false;

  final TextEditingController search =TextEditingController();

  Widget build(BuildContext context){
return Scaffold(
appBar: AppBar(
        title: const Text('Task 9: Auth & Search'),
        backgroundColor: Colors.blue.shade100,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
children: [
  Container(
    width: double.infinity,
    padding:  const EdgeInsets.symmetric(vertical: 30,horizontal: 16),
   color: Colors.blue.shade700,
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
                    'Welcome to TechStore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
      ),
      SizedBox(height: 4,),

      Text(
                    'Find the best deals on gadgets today!',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
    ],
   ),
  ),

  const SizedBox(height: 24),

 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: search,
                      decoration: InputDecoration(
                        hintText: 'Search computers, laptops...',
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(width: 8),



                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      final query = search.text.trim();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(query.isEmpty ? 'Please enter a search term' : 'Searching for: $query')),
                      );
                    },
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),

const SizedBox(height: 60),


           ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: _isSignedIn ? Colors.red.shade100 : Colors.green.shade100,
                foregroundColor: _isSignedIn ? Colors.red.shade900 : Colors.green.shade900,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  _isSignedIn = !_isSignedIn;
                });
              },
              icon: Icon(_isSignedIn ? Icons.logout : Icons.login),
              label: Text(_isSignedIn ? 'Sign Out' : 'Sign In'),
            ),

],
        ),
      ),

);
  }
}
