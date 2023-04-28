import 'package:flutter/material.dart';
import 'package:meme/splash.dart';

void main() {
  runApp(const Meme());
}

class Meme extends StatelessWidget {
  const Meme({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meme App',
      theme: ThemeData(
        fontFamily: 'JosefinSans',
      ),
      home: const SplashScreen(),
    );
  }
}
