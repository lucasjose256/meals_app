import 'package:flutter/material.dart';
import 'package:meals_app/Screens/category_meals.dart';

class CategoryItem extends StatelessWidget {
  static const nameRoute = 'categ';
  final String title;
  final String id;
  final Color color;

  const CategoryItem(this.title, this.color, this.id);

  void selectorCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/categories', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //Nos permite detectar outros comportamentos em uma widget,como toque duplo e outros.
      // e adiciona efeitos visuais com a interação do usuário
      onTap: () => selectorCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [color.withOpacity(0.72), color]),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
