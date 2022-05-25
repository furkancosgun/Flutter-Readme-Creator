import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/screens/mainPage.dart';
import 'package:readme_creator/provider/proccess.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Proccess(),
    child: const MaterialApp(
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: mainPage());
  }
}
