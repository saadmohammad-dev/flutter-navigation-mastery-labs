import 'package:flutter/material.dart';
import 'models.dart';

class Task7DetailScreen extends StatelessWidget {
  final Product product;

  const Task7DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.blue.shade100,
      ),
     
    );
  }
}