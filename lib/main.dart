import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

import './views/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UnStack",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF18171f),
        primaryColor: const Color(0xFF446edf),
        brightness: Brightness.dark,
        canvasColor: const Color(0xFFf2f4f9),
        iconTheme: const IconThemeData(
          color: Color(0xFFf2f4f9),
          size: 25,
        ),
      ),
      home: HomePage(),
    );
  }
}
