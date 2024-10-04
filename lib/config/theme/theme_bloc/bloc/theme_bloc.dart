import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service/config/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({required bool initialTheme})
      : super(ThemeState(
            themeData: initialTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
            isDarkTheme: initialTheme)) {
    on<ThemeChanged>(_onThemeChanged);
    _loadTheme();
  }

  Future<void> _onThemeChanged(
      ThemeChanged event, Emitter<ThemeState> emit) async {
    ThemeData theme =
        event.isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme;
    emit(ThemeState(themeData: theme, isDarkTheme: event.isDarkTheme));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkTheme', event.isDarkTheme);
  }

  Future<void> _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? savedIsDarkTheme = prefs.getBool('isDarkTheme');

    if (savedIsDarkTheme == null) {
      final systemBrightness =
          // ignore: deprecated_member_use
          WidgetsBinding.instance.window.platformBrightness;
      bool isSystemDarkTheme = systemBrightness == Brightness.dark;

      add(ThemeChanged(isDarkTheme: isSystemDarkTheme));
    } else {
      add(ThemeChanged(isDarkTheme: savedIsDarkTheme));
    }
  }
}
