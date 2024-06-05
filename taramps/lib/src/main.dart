import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taramps/src/pages/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // BUSCA O ULTIMO TEMA SALVO PELO USUARIO
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isDark = prefs.getBool('isDarkTheme') ?? false;



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark(
          primary: Colors.white,
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen()
      }
    );
  }
}


