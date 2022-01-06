import 'package:flutter/material.dart';
import 'package:projeto_meals/components/main_drawer.dart';
import 'package:projeto_meals/screens/categories_screen.dart';
import 'package:projeto_meals/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<String> _titles = [
    'Lista de Categorias',
    'Meus Favoritos',
  ];

  final List<Widget> _screens = [
    const CategoriesScreen(),
    const FavoriteScreen(),
  ];
  _selecteScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedScreenIndex],
        ),
      ),
      drawer: const MainDrawer(),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selecteScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
              label: 'Categorias',
              icon: Icon(
                Icons.category,
              )),
          BottomNavigationBarItem(
              label: 'Favoritos',
              icon: Icon(
                Icons.star,
              ))
        ],
      ),
    );
  }
}
