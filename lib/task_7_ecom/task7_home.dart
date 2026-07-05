import 'package:flutter/material.dart';
import 'package:mad_lab_assignment_2/task_7_ecom/task7_subcategory.dart';
import 'models.dart';

class Task7HomeScreen extends StatelessWidget{
  const Task7HomeScreen({super.key});

  Widget build(BuildContext context){
final List<String> categoriesMod = CatalogData.categoryCatalog.keys.toList();
    return Scaffold(
 appBar: AppBar(
title: const Text('Categories Catalog'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
 ),


body: ListView.builder(
        itemCount: categoriesMod.length,
        itemBuilder: (context, index) {
          final currentCategory = categoriesMod[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                currentCategory,
                style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Task7SubCategoryScreen(
                      categoryName: currentCategory,
                      productsList: CatalogData.categoryCatalog[currentCategory] ?? [],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}