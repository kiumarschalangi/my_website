import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'utils/screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const MyAppChild(),
    );
  }
}

class MyAppChild extends StatefulWidget {
  const MyAppChild({super.key});

  @override
  _MyAppChildState createState() => _MyAppChildState();
}

class _MyAppChildState extends State<MyAppChild> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return const HomePage();
  }
}
