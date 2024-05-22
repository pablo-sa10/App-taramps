import 'package:flutter/material.dart';

class BuildDrawer{
  static Drawer getDrawer(BuildContext context){
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