import 'package:flutter/material.dart';
import 'package:meals/models/settings.dart';
import '../components/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();

  Widget _createSwicth(
    String title,
    String subtitle,
    bool value,
    Function(bool?) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _createSwicth(
                'Sem glúten',
                'Só exibir refeições sem glúten.',
                settings.isGlutenFree,
                (value) => setState(() => settings.isGlutenFree = value!),
              ),
              _createSwicth(
                'Sem lactose',
                'Só exibir refeições sem lactose.',
                settings.isLactoseFree,
                (value) => setState(() => settings.isLactoseFree = value!),
              ),
              _createSwicth(
                'Vegana',
                'Só exibir refeições veganas.',
                settings.isVegan,
                (value) => setState(() => settings.isLactoseFree = value!),
              ),
              _createSwicth(
                'Vegetariana',
                'Só exibir refeições vegetarianas.',
                settings.isVegetarian,
                (value) => setState(() => settings.isVegetarian = value!),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
