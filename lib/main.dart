import 'package:flutter/material.dart';

import 'login/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app_example',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
