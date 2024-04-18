import "package:app_tugas_1/pages/auth/login_page.dart";
import "package:app_tugas_1/pages/home.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool userStatus = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: userStatus ? const MyHome() : const LoginPage(),
    );
  }
}
