import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_based_yt_mahdi/screens/edit_profile.dart';
import 'package:project_based_yt_mahdi/screens/home_page.dart';
import 'package:project_based_yt_mahdi/screens/login_page.dart';
import 'package:project_based_yt_mahdi/screens/main_page.dart';
import 'package:project_based_yt_mahdi/utils/color/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
        '/edit_profile': (context) => EditProfilePage()
      },
    );
  }
}
