import 'package:flaty/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white, // Set white background color
          filled: true,
          prefixIconColor: const Color(0x00ff5c01),
          suffixIconColor: const Color(0x00ff5c01),
          focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0x00ff5c01)),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          iconColor: const Color(0x00ff5c01),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0x00ff5c01)),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          
          hintStyle: const TextStyle(
              color: Color(0x00ff5c01)), // Set green hint text color
          labelStyle: const TextStyle(
              color: Color(0x00ff5c01)), // Set green label text color
          // Set green icon color
        ),
        scaffoldBackgroundColor: Colors.white,
 
        colorSchemeSeed: const Color(0x00ff5c01),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),
            color: Color(0x00ff5c01),
            foregroundColor: Colors.black),
      ),
    );
  }
}
