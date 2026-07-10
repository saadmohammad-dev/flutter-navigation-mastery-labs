import 'package:flutter/material.dart';
import 'task10_grouped_screens.dart';


//task 10...
class TabOneHost extends StatefulWidget {
  const TabOneHost({super.key});
  @override
  State<TabOneHost> createState() => _TabOneHostState();
}

class _TabOneHostState extends State<TabOneHost> {
  bool _showScreenOne = true; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: Colors.blue.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => _showScreenOne = true),
                child: const Text('Go to Screen 1'),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _showScreenOne = false),
                child: const Text('Go to Screen 2'),
              ),
            ],
          ),
        ),
        Expanded(
           child: _showScreenOne ? const ScreenOne() : const ScreenTwo(),
        ),
      ],
    );
  }
}
class TabTwoHost extends StatefulWidget {
  const TabTwoHost({super.key});
  @override
  State<TabTwoHost> createState() => _TabTwoHostState();
}

class _TabTwoHostState extends State<TabTwoHost> {
  bool _showScreenThree = true; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 50),
          color: Colors.orange.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => _showScreenThree = true),
                child: const Text('Go to Screen 3'),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _showScreenThree = false),
                child: const Text('Go to Screen 4'),
              ),
            ],
          ),
        ),
        Expanded(
          child: _showScreenThree ? const ScreenThree() : const ScreenFour(),
        ),
      ],
    );
  }
}