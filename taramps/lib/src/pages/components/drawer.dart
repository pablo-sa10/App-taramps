import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taramps/src/theme/theme_provider.dart';

class BuildDrawer extends StatefulWidget {
  const BuildDrawer({super.key});

  @override
  State<BuildDrawer> createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: SizedBox(
              height: 20,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              "perfil",
              textAlign: TextAlign.center,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "Configurações",
              textAlign: TextAlign.center,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: const Text(
              "Mudar Tema",
              textAlign: TextAlign.center,
            ),
            onTap: () {
              themeProvider.toggleTheme();
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              "Sair",
              textAlign: TextAlign.center,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}