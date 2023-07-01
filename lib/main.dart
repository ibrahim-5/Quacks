import 'package:flutter/material.dart';
import 'package:quacks/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Material App',
        home: routeToPage());
  }
}

Widget routeToPage() {
  if (routeToSignInPage()) {
    return const LoginPage();
  }
  return const LoginPage();
}

// Determines if app hasn't had user previously logged in.
bool routeToSignInPage() {
  return true;
}
