import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF027373);

// Seleccionar los colores de su aplicación NO UTILIZAR LOS COLORES DE EJEMPLO
const List<Color> _colorTheme=[
  _customColor,
  Color(0xFF0D8C7F),
  Color(0xFF65A69F),
  Color(0xFF9BBFBC),
  Color(0xFFF0F1F2),
];

class AppTheme{
  final int selectedThemeColor;

  AppTheme({
    this.selectedThemeColor = 0,
  }):assert(selectedThemeColor >= 0 && selectedThemeColor < _colorTheme.length);

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedThemeColor],
      appBarTheme: AppBarTheme(
        backgroundColor: _colorTheme[selectedThemeColor],
        foregroundColor: Colors.white,
      ),
    );
  }
}