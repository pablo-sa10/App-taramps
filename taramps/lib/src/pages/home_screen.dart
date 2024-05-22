import 'package:flutter/material.dart';
import 'package:taramps/src/components/graphic_display.dart';
import 'package:taramps/src/pages/widgets/drawer.dart';


import '../components/canal_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedGraph = 1;

  void updateGraph(int graphNumber) {
    setState(() {
      selectedGraph = graphNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/Logo2.png",
          width: 100,
        ),
        centerTitle: true,
      ),
      drawer: BuildDrawer.getDrawer(context),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          CanalButton(onButtonPressed: updateGraph),
          SizedBox(height: 40),
          GraphicDisplay(selectedGraph: selectedGraph),
        ],
      ),
    );
  }
}
