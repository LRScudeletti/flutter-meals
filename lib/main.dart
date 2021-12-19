import 'package:flutter/material.dart';
import 'package:projeto_meals/Utils/app_routes.dart';
import 'package:projeto_meals/screens/categories_meals_screen.dart';
import 'package:projeto_meals/screens/categories_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(204, 255, 255, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
                subtitle2: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      routes: {
        AppRoutes.home: (ctx) => CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
