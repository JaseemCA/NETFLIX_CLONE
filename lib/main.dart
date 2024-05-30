import 'package:flutter/material.dart';
import 'package:netflixclone/colors/colors.dart';

import 'package:netflixclone/screens/splash-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NETFLIX',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: colours.scaffoldBgColor,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
