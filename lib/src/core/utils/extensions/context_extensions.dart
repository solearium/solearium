import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // Theme Shortcuts
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  // Media Query Shortcuts
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  
  // Navigation Shortcuts (if not using GoRouter context.push directly everywhere)
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop(result);

  // Snackbar Shortcut
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
