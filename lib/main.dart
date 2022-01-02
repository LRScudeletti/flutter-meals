import 'package:flutter/material.dart';
import 'package:projeto_meals/Utils/app_routes.dart';
import 'package:projeto_meals/screens/categories_meals_screen.dart';
import 'package:projeto_meals/screens/categories_screen.dart';
import 'package:projeto_meals/screens/meal_detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: Colors.blue),
        fontFamily: 'Raleway',
        canvasColor: Colors.grey[200],
        textTheme: ThemeData.light().textTheme.copyWith(
                subtitle2: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      routes: {
        AppRoutes.home: (ctx) => const CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.mealDetail: (ctx) => const MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/alguma-coisa') {
      //     return null;
      //   } else if (settings.name == '/outra-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) {
      //       return const CategoriesScreen();
      //     });
      //   }
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) {
          return const CategoriesScreen();
        });
      },
    );
  }
}
