import 'package:flutter/material.dart';
import 'package:budget_tracker/expense.dart';

var kColorSheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkSheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorSheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSheme.onPrimaryContainer,
            foregroundColor: kColorSheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
              color: kColorSheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: kColorSheme.primaryContainer,
          ))),
      home: const Expenses(),
    );
  }
}
