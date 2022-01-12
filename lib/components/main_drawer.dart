import 'package:flutter/material.dart';
import 'package:projeto_meals/Utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createIcon(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            color: Theme.of(context).colorScheme.primary,
            child: const Text(
              'Vamos cozinhar?',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _createIcon(
            Icons.restaurant,
            'Refeições',
            () => WidgetsBinding.instance?.addPostFrameCallback((_) {
              Navigator.of(context).pushNamed(AppRoutes.home);
            }),
          ),
          _createIcon(
            Icons.settings,
            'Configurações',
            () => WidgetsBinding.instance?.addPostFrameCallback((_) {
              Navigator.of(context).pushNamed(AppRoutes.settings);
            }),
          )
        ],
      ),
    );
  }
}
