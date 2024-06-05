import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Classe ThemeProvider que estende ChangeNotifier para gerenciar o estado do tema
class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  ThemeProvider(bool isDark) {
    _loadTheme();
  }

  bool get isDarkTheme => _isDark;

  // Método privado assíncrono para carregar o tema salvo nas preferências compartilhadas
  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _isDark = prefs.getBool('isDarkTheme') ?? false;
    notifyListeners();
  }

  // Método privado assíncrono para salvar o tema atual nas preferências compartilhadas
  void _saveTheme()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkTheme', _isDark);
  }

  // Método para alternar entre os temas claro e escuro
  void toggleTheme(){
    _isDark = !_isDark;
    _saveTheme();
    notifyListeners();
  }
}