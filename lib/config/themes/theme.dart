import 'package:flutter/material.dart';

const Color _customColor = Color( 0xFF49149F );
final List<Color> _colors = [
  _customColor,
  Colors.green,
  Colors.yellow,
  Colors.redAccent,
];

class YesNoTheme {
  final int selectedColor;
  
  YesNoTheme({ required this.selectedColor}): assert(selectedColor >= 0 && selectedColor < _colors.length, 'Invalid color index');
 
 ThemeData theme() {
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colors[selectedColor],
  );

 }

}

