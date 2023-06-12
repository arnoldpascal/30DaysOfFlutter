import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
// <<<<<<< Day5
// import 'package:flutter_catalog/utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';
// =======
// // <<<<<<< Day4
// // import 'package:google_fonts/google_fonts.dart';
// // =======
// // >>>>>>> Day2
// >>>>>>> Day2

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
// <<<<<<< Day8
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           primarySwatch: Colors.deepPurple,
//           fontFamily: GoogleFonts.lato().fontFamily),
// =======
// // <<<<<<< Day4
// //       theme: ThemeData(
// //           primarySwatch: Colors.deepPurple,
// //           fontFamily: GoogleFonts.lato().fontFamily),
// // =======
// //       theme: ThemeData(primarySwatch: Colors.deepPurple),
// // >>>>>>> Day2
// >>>>>>> Day2
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
