import 'package:flutter/material.dart';

class BuildAppBar extends StatefulWidget {
  const BuildAppBar({super.key});

  @override
  State<BuildAppBar> createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: Builder(
        builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu));
        },
      ),
      title: Center(
        child: SizedBox(
          width: 100,
          child: Image.asset("assets/Logo2.png"),
        ),
      ),
    );
  }
}
