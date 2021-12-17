import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatefulWidget {
  const CategoriesMealsScreen({Key? key}) : super(key: key);

  @override
  _CategoriesMealsScreenState createState() => _CategoriesMealsScreenState();
}

class _CategoriesMealsScreenState extends State<CategoriesMealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: const Center(
        child: Text('Receitas por Categoria'),
      ),
    );
  }
}
