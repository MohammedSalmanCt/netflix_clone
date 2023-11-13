import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/main_page/widgets/screen_main_page.dart';
import 'package:netflix_clone/core/colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
         bodyText2: TextStyle(color: Colors.white),
        )
      ),
      home: ScreenMainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

