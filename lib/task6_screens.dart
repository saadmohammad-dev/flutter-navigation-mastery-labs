import 'package:flutter/material.dart';
class Task6HomeScreen extends StatefulWidget {
  const Task6HomeScreen({super.key});

  @override
  State<Task6HomeScreen> createState() => _Task6HomeScreenState();
}

class _Task6HomeScreenState extends State<Task6HomeScreen> {
  final TextEditingController numberInputController = TextEditingController(text: '3');

  @override
  void dispose() {
    numberInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Task 6: Home'),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  controller: numberInputController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
              
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task6DisplayScreen(
                        receivedNumberStr: numberInputController.text.trim(),
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

class Task6DisplayScreen extends StatelessWidget {
  final String receivedNumberStr;

  const Task6DisplayScreen({
    super.key,
    required this.receivedNumberStr,
  });

@override
Widget build(BuildContext context) {
  String numberInWords;

  switch (receivedNumberStr) {
    case '1':
      numberInWords = 'one';
      break;
    case '2':
      numberInWords = 'two';
      break;
    case '3':
      numberInWords = 'three';
      break;
    default:
      numberInWords = receivedNumberStr;
  }

  return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Task 6: Display'),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
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
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),
                  child: Text(
                    'The received number is $numberInWords',
                    style: const TextStyle(fontSize: 18),
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