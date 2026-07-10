import 'package:flutter/material.dart';
/// task 10
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      child: const Center(
        child: Text('Screen 1 (Inside Tab 1)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan.shade50,
      child: const Center(
        child: Text('Screen 2 (Inside Tab 1)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.cyan)),
      ),
    );
  }
}

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade50,
      child: const Center(
        child: Text('Screen 3 (Inside Tab 2)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)),
      ),
    );
  }
}

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade50,
      child: const Center(
        child: Text('Screen 4 (Inside Tab 2)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple)),
      ),
    );
  }
}


