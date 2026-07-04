import 'dart:math';
import 'package:flutter/material.dart';

class Task4MainScreen extends StatefulWidget {
  const Task4MainScreen({super.key});

  @override
  State<Task4MainScreen> createState() => _Task4MainScreen();
}

class _Task4MainScreen extends State<Task4MainScreen> {
  final TextEditingController num = TextEditingController(text: '0');

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task:4                     Main Layout',
        ),
        backgroundColor: Colors.green.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

  ElevatedButton(
                  onPressed: () {
                    int reset= 0;
                    setState(() {
                      num.text = reset.toString();
                    });
                  },
                  child: const Text('Reset'),
                ),

                          const SizedBox(height: 40),
  

          SizedBox(
            width: 320,
              child: TextField(
                controller: num,
                
                textAlign: TextAlign.center,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    int randomNum = Random().nextInt(100)+1 ;
                    setState(() {
                      num.text = randomNum.toString();
                    });
                  },
                  child: const Text('Random'),
                ),

                ElevatedButton(
                  onPressed: () {
                    int currentNumber = int.tryParse(num.text) ?? 0;

                    setState(() {
                      num.text = (currentNumber + 1).toString();
                    });
                  },
                  child: const Text('COUNTER'),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Task4DisplayScreen(sentValue: num.text),
                      ),
                    );
                  },
                  child: const Text('SEND'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Task4DisplayScreen extends StatelessWidget {
  final String sentValue;

  const Task4DisplayScreen({
    super.key,
    required this.sentValue,
  });

  @override
 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Display Screen')),
    body: Padding(
      padding: const EdgeInsets.all(1.0), // 📉 Decreased screen padding to give room
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 60.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                ),
              

              child: RichText(
  text: TextSpan(
    style: const TextStyle(fontSize: 18, color: Colors.black), 
    children: [
      const TextSpan(text: 'The value is '),
      TextSpan(
        text: sentValue,
        style: const TextStyle(
          color: Colors.black87,          
          fontWeight: FontWeight.bold, 
        ),
      ),
    ],
  ),
)
                

              ),
              
              const SizedBox(height: 40), // Balanced spacing before back button
              
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
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