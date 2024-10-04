import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:home_service/config/theme/theme_bloc/bloc/theme_bloc.dart';
import 'package:home_service/config/theme/theme_bloc/bloc/theme_state.dart';
import 'package:home_service/view/splash_screen_view/splash_screen_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //theme
  final prefs = await SharedPreferences.getInstance();
  bool isDarkTheme = prefs.getBool('isDarkTheme') ?? false;

  runApp(MyApp(isDarkTheme: isDarkTheme));
}

class MyApp extends StatelessWidget {
  final bool isDarkTheme;

  const MyApp({super.key, required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(initialTheme: isDarkTheme),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return GetMaterialApp(
              theme: state.themeData,
              debugShowCheckedModeBanner: false,
              home: const SplashScreenView());
        },
      ),
    );
  }
}
// textTheme: TextTheme(
//                   labelMedium: TextStyle(
//                       color: Colors.black.withOpacity(.3), fontSize: 16),
//                   bodyMedium: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 13,
//                   ),
//                   bodySmall: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black.withOpacity(0.7),
//                       fontSize: 16,
//                       inherit: false),
//                   bodyLarge: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 24,
//                       fontWeight: FontWeight.w800))),
