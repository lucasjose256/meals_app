import 'package:flutter/material.dart';
import 'package:meals_app/categories_items.dart';
import 'package:meals_app/models/dummy_data.dart';

class Categories extends StatelessWidget {
  const Categories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DeliMeals')),
      body: GridView(
        padding: EdgeInsets.all(12),
        children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(e.title, e.color, e.id))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
