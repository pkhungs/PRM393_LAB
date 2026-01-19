import 'package:flutter/material.dart';
import 'screens/core_widgets_demo.dart';
import 'screens/input_controls_demo.dart';
import 'screens/layout_demo.dart';
import 'screens/scaffold_theme_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(
        isDarkMode: isDarkMode,
        onToggleTheme: () {
          setState(() {
            isDarkMode = !isDarkMode;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const HomeScreen({
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab 4 – Flutter UI'),
        actions: [
          Switch(
            value: isDarkMode,
            onChanged: (_) => onToggleTheme(),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _navButton(context, 'Exercise 1 – Core Widgets', CoreWidgetsDemo()),
          _navButton(context, 'Exercise 2 – Input Widgets', InputControlsDemo()),
          _navButton(context, 'Exercise 3 – Layout Basics', LayoutDemo()),
          _navButton(context, 'Exercise 4 – Scaffold & Theme', ScaffoldThemeDemo()),
        ],
      ),
    );
  }

  Widget _navButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        child: Text(title),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
      ),
    );
  }
}
