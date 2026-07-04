import 'package:flutter/material.dart';

class Task3InputScreens extends StatefulWidget {
  const Task3InputScreens({super.key});

  State<Task3InputScreens> createState() => _Task3InputScreens();
}

class _Task3InputScreens extends State<Task3InputScreens> {
  final TextEditingController name = TextEditingController();
  final TextEditingController age = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    age.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task 3:                                                                       Input Screen ',
        ),
        backgroundColor: Colors.green.shade100,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: name,
              decoration: const InputDecoration(border: UnderlineInputBorder()),
            ),

            SizedBox(height: 24),
            const Text(
              'Age',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: age,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: UnderlineInputBorder()),
            ),
            SizedBox(height: 32),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade600,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task3DisplayScreen(
                        searchName: name.text.trim(),
                        searchAge: age.text.trim(),
                      ),
                    ),
                  );
                },
                child: const Text('Search'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task3DisplayScreen extends StatelessWidget {
  final String searchName;
  final String searchAge;

  const Task3DisplayScreen({
    super.key,
    required this.searchName,
    required this.searchAge,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> recordList = [
      {"id": 070, "name": "Saad Mohammad", "age": 21},
      {"id": 090, "name": "Zeeshan", "age": 21},
      {"id": 126, "name": "Mahad", "age": 22},
      {"id": 40, "name": "Mehtab", "age": 21},
      {"id": 50, "name": "Saad Mohammad Sarfraz", "age": 21},
    ];
    Map<String, dynamic>? foundRecord;

    for (var record in recordList) {
      if (record['name'].toString().toLowerCase() == searchName.toLowerCase() &&
          record['age'].toString().toLowerCase() == searchAge) {
        foundRecord = record;
        break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task 3:                                      Display Screen',
        ),
        backgroundColor: Colors.green.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(90),

        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.5),
          ),
          child: foundRecord != null
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Record Found Sucessfully',
                      style: const TextStyle(
                        fontSize: 22,
                        height: 6,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'User: iD:       '
                      '${foundRecord['id']}',
                      style: const TextStyle(fontSize: 22, height: 2),
                    ),
                    Text(
                      'User Name:        '
                      '${foundRecord['name']}',
                      style: const TextStyle(fontSize: 22, height: 2),
                    ),
                    Text(
                      'User: Age:        '
                      '${foundRecord['age']}',
                      style: const TextStyle(fontSize: 22, height: 2),
                    ),
                  ],
                )
              : const Center(
                  child: Text(
                    'Record Not found!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
