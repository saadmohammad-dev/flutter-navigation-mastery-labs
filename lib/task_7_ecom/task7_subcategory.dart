import 'package:flutter/material.dart';
import 'models.dart';

class Task7SubCategoryScreen extends StatelessWidget {
  final String categoryName;
  final List<Product> productsList;

  const Task7SubCategoryScreen({
    super.key,
    required this.categoryName,
    required this.productsList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
appBar: AppBar(
  title: Text(categoryName),
  backgroundColor: Colors.blue.shade100,
),

    );
  }
}