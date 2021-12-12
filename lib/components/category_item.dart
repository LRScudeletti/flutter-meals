import 'package:flutter/material.dart';
import 'package:projeto_meals/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        category.title,
      ),
    );
  }
}
