import 'package:flutter/material.dart';
import 'package:meals_app/Screens/categories_screens.dart';
import 'package:meals_app/Screens/category_meals.dart';
import 'package:meals_app/categories_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Color.fromARGB(255, 113, 22, 101),
        canvasColor: Color.fromARGB(255, 195, 195, 195),
        fontFamily: 'Releway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Colors.greenAccent),
              bodyText2: TextStyle(color: Color.fromARGB(255, 24, 23, 22)),
              headline1: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
      ),
      home: Categories(),
      routes: {
        '/categories': (context) => CategoryMealsScreen(),
        //usando o método estático da classe para criar uma rota
        CategoryItem.nameRoute: (context) => CategoryMealsScreen(),
      },
    );
  }
}
