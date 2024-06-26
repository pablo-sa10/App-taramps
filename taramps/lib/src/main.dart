import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taramps/src/pages/home_screen.dart';
import 'package:taramps/src/theme/app_theme.dart';
import 'package:taramps/src/theme/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // BUSCA O ULTIMO TEMA SALVO PELO USUARIO
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isDark = prefs.getBool('isDarkTheme') ?? false;

  ThemeProvider themeProvider = ThemeProvider(isDark);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: themeProvider),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child){
      return MaterialApp(
          title: 'Flutter Demo',
          theme: themeProvider.isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {'/': (context) => const HomeScreen()});
    });

  }
}
