import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_creditcard_management_app/constants.dart';
import 'package:money_creditcard_management_app/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          textTheme: GoogleFonts.ralewayTextTheme(
            Theme.of(context).textTheme,
          )),
      home: const HomePage(),
    );
  }
}
