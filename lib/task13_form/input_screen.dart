import 'package:flutter/material.dart';
import 'display_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  String? _selectedCountry;
  final List<String> _countries = ['Pakistan', 'United States', 'United Kingdom', 'Canada'];

  String? _selectedGender;

  bool _isPhyChecked = false;
  bool _iswebChecked = false;
  bool _isAppChecked = false;

  final List<String> _allSkills = ['Designing', 'Backend', 'Database', 'Frontend'];
  final List<String> _selectedSkills = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('INPUT SCREEN'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 80, child: Text('Email', style: TextStyle(fontSize: 16))),
                Expanded(
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                const SizedBox(width: 80, child: Text('Name', style: TextStyle(fontSize: 16))),
                Expanded(
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                const SizedBox(width: 80, child: Text('Country', style: TextStyle(fontSize: 16))),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedCountry,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    items: _countries.map((country) {
                      return DropdownMenuItem(value: country, child: Text(country));
                    }).toList(),
                    onChanged: (val) => setState(() => _selectedCountry = val),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                const SizedBox(width: 80, child: Text('Gender', style: TextStyle(fontSize: 16))),
                Radio<String>(
                  value: 'Male',
                  groupValue: _selectedGender,
                  onChanged: (val) => setState(() => _selectedGender = val),
                ),
                const Text('Male'),
                
                const SizedBox(width: 10),
                Radio<String>(
                  value: 'Female',
                  groupValue: _selectedGender,
                  onChanged: (val) => setState(() => _selectedGender = val),
                ),
                const Text('Female'),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                const SizedBox(width: 80, child: Text('Subjects', style: TextStyle(fontSize: 16))),
                Checkbox(
                  value: _isPhyChecked,
                  onChanged: (val) => setState(() => _isPhyChecked = val ?? false),
                ),
                const Text('Phy'),
                Checkbox(
                  value: _iswebChecked,
                  onChanged: (val) => setState(() => _iswebChecked = val ?? false),
                ),
                const Text('Web'),
                Checkbox(
                  value: _isAppChecked,
                  onChanged: (val) => setState(() => _isAppChecked = val ?? false),
                ),
                const Text('Flutter'),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 80, child: Text('Skills', style: TextStyle(fontSize: 16))),
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: ListView(
                      children: _allSkills.map((skill) {
                        final isSelected = _selectedSkills.contains(skill);
                        return ListTile(
                          title: Text(skill),
                          dense: true,
                          trailing: isSelected ? const Icon(Icons.check, color: Colors.green) : null,
                          onTap: () {
                            setState(() {
                              if (isSelected) {
                                _selectedSkills.remove(skill);
                              } else {
                                _selectedSkills.add(skill);
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 80, child: Text('Address', style: TextStyle(fontSize: 16))),
                Expanded(
                  child: TextField(
                    controller: _addressController,
                    maxLines: 3,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, foregroundColor: Colors.black),
                onPressed: () {
                  // Collect checked subjects into a tidy comma string
                  List<String> dynamicSubjects = [];
                  if (_isPhyChecked) dynamicSubjects.add('Phy');
                  if (_iswebChecked) dynamicSubjects.add('Web');
                  if (_isAppChecked) dynamicSubjects.add('Flutter');

                  // Pass form data parameters to DisplayScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayScreen(
                        email: _emailController.text,
                        name: _nameController.text,
                        country: _selectedCountry ?? '',
                        gender: _selectedGender ?? '',
                        subjects: dynamicSubjects.join(', '),
                        skills: _selectedSkills.join(', '),
                        address: _addressController.text,
                      ),
                    ),
                  );
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}