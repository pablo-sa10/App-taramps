import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taramps/src/theme/app_theme.dart';
import 'package:taramps/src/theme/theme_provider.dart';
import './components/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedGraph = 1;
  int? _opcao;
  bool light = true;

  void updateGraph(int graphNumber) {
    setState(() {
      selectedGraph = graphNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/Logo2.png",
          width: 100,
        ),
        centerTitle: true,
      ),
      drawer: const BuildDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text("Titulo de exemplo",
                    style: themeProvider.isDarkTheme ? AppTheme.darkTheme
                        .textTheme.headlineLarge : AppTheme.lightTheme.textTheme
                        .headlineLarge),
                Text("Texto grande de exemplo",
                    style: themeProvider.isDarkTheme ? AppTheme.darkTheme
                        .textTheme.bodyLarge : AppTheme.lightTheme.textTheme
                        .bodyLarge),
                Text("Texto medio de exemplo",
                    style: themeProvider.isDarkTheme ? AppTheme.darkTheme
                        .textTheme.bodyMedium : AppTheme.lightTheme.textTheme
                        .bodyMedium),
                Text("Texto pequeno de exemplo",
                    style: themeProvider.isDarkTheme ? AppTheme.darkTheme
                        .textTheme.bodySmall : AppTheme.lightTheme.textTheme
                        .bodySmall),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Nome"
                  ),
                ), const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  decoration: const InputDecoration(labelText: "Escolha uma opção"),
                  value: _opcao,
                  items: <int>[1, 2, 3, 4].map((int value){
                    return DropdownMenuItem(value: value, child: Text("$value"));
                  }).toList(),
                  onChanged: (newValue){
                    setState(() {
                      _opcao = newValue;
                    });
                  },),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for(int i = 0; i < 4; i++)
                    Card(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Text("Cartao"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Switch(value: light, onChanged: (bool value){
                  setState(() {
                    light = value;
                  });
                }),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("botao de exemplo"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("botao de exemplo"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
