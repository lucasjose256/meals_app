import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  /* final String categoryId;
  final String categoryTitle;*/
  const CategoryMealsScreen();

  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routes['title'];
    final categoryid = routes['id'];
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!)),
      body: ListView.builder(itemBuilder: ((context, index) {
        return ListView();
      })),
    );
  }
}
