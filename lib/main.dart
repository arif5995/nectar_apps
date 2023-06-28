import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar_apps/authentification/started_page.dart';
import 'package:nectar_apps/splash/splash_screen.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Method',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          // textTheme: GoogleFonts.quicksandTextTheme(textTheme)
      ),
      home: const StartedPage(),
    );
  }
}

