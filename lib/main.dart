import 'package:flutter/material.dart';

import 'package:sneakers/screens/home_page.dart';

void main() {
  runApp(const MyApp());
  // for (int i = 0; i <= 100; i++) {
  //   print(i);
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
