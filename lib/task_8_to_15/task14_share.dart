import 'package:flutter/material.dart';

String? name = 'Saad Mohammad';
int? age = 20;

// SCREEN 1: DISPLAY GLOBAL DATA
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
        backgroundColor: Colors.blue.shade100,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Shared Global Data:', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            Text('Name: ${name ?? ""}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Age: ${age ?? ""}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Screen 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen2()),
                ).then((_) {
                  setState(() {});
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}


// SCREEN 2: CHANGE GLOBAL DATA
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = name ?? '';
    _ageController.text = age != null ? age.toString() : '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Edit Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Edit Age',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text('Save Changes & Go Back'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade50),
              onPressed: () {
                String typedName = _nameController.text.trim();
                String typedAge = _ageController.text.trim();

                name = typedName.isEmpty ? null : typedName;
                age = typedAge.isEmpty ? null : int.tryParse(typedAge);

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}