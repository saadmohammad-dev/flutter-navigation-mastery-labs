import 'package:flutter/material.dart';

class Task5HomeScreen extends StatefulWidget {
  const Task5HomeScreen({super.key});

  @override
  State<Task5HomeScreen> createState() => _Task5HomeScreenState();
}

class _Task5HomeScreenState extends State<Task5HomeScreen> {
  final TextEditingController Tehsil = TextEditingController(text: 'Havelian');
  final TextEditingController District = TextEditingController(text: 'Abbottabad');
  final TextEditingController Country = TextEditingController(text: 'Pakistan');

  @override
  void dispose() {
    Tehsil.dispose();
    District.dispose();
    Country.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextField(
                  controller: Tehsil,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: 250,
                child: TextField(
                  controller: District,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 24),


              SizedBox(
                width: 250,
                child: TextField(
                  controller: Country,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 24),



              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade400,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task5DisplayScreen(
                        stringOne: Tehsil.text,
                        stringTwo: District.text,
                        stringthree: Country.text,
                      ),
                    ),
                  );
                },
                child: const Text('CLICK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Task5DisplayScreen extends StatelessWidget {
  final String stringOne;
  final String stringTwo;
final String stringthree;
  const Task5DisplayScreen({
    super.key,
    required this.stringOne,
    required this.stringTwo,
    required this.stringthree,
  });

  @override
  Widget build(BuildContext context) {
    final String concatenatedString = '$stringOne, $stringTwo,$stringthree';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Display Screen'),
        backgroundColor: Colors.grey.shade200,
      ),

      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
            ),


            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),


                  child: Text(
                    concatenatedString,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  
                ),
                const SizedBox(height: 32),
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}