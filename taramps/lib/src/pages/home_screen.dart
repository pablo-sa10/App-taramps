import 'package:flutter/material.dart';
import './components/drawer.dart';

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
    );
  }
}
