import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final String email;
  final String name;
  final String country;
  final String gender;
  final String subjects;
  final String skills;
  final String address;

  // 📥 Constructor receives variables cleanly
  const DisplayScreen({
    super.key,
    required this.email,
    required this.name,
    required this.country,
    required this.gender,
    required this.subjects,
    required this.skills,
    required this.address,
  });

  // Helper row widget to display key-value pairs exactly like the wireframe layout
  Widget _buildDisplayRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DISPLAY SCREEN'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDisplayRow('Email', email),
            _buildDisplayRow('Name', name),
            _buildDisplayRow('Country', country),
            _buildDisplayRow('Gender', gender),
            _buildDisplayRow('Subjects', subjects),
            _buildDisplayRow('Skills', skills),
            _buildDisplayRow('Address', address),
            const SizedBox(height: 40),
            
            // 💾 Save Button matching the image schematic
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, foregroundColor: Colors.black),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Data Saved Successfully!')),
                  );
                },
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}