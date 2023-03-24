import 'dart:developer';

import 'package:flutter/material.dart';

import './screen/category_meals_screen.dart';
import './screen/categories_screen.dart';
import './screen/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Ralway',
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (setting) {
        log(setting.arguments);
        // return MaterialPageRoute(
        //   builder: (ctx) => CategoriesScreen(),
        // );
      },
      onUnknownRoute: (setting) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
