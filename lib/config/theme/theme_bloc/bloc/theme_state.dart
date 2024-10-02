import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class ThemeState extends Equatable {
  final ThemeData themeData;
  final bool isDarkTheme;

  const ThemeState({required this.themeData, required this.isDarkTheme});

  @override
  List<Object> get props => [themeData, isDarkTheme];
}
