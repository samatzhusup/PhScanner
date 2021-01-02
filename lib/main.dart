import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phscan/Utilities/constants.dart';
import 'package:phscan/screens/about_screen.dart';
import 'package:phscan/screens/getting_started_screen.dart';
import 'package:phscan/screens/home_screen.dart';
import 'package:phscan/screens/scan_document.dart';
import 'package:phscan/screens/view_document.dart';

import 'screens/pdf_screen.dart';
import 'screens/splash_screen.dart';

void main() async {
  runApp(OpenScan());
}

class OpenScan extends StatefulWidget {
  @override
  _OpenScanState createState() => _OpenScanState();
}

class _OpenScanState extends State<OpenScan> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: primaryColor,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: primaryColor,
      statusBarBrightness: Brightness.light,
    ));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: SplashScreen.route,
      routes: {
        SplashScreen.route: (context) => SplashScreen(),
        GettingStartedScreen.route: (context) => GettingStartedScreen(),
        HomeScreen.route: (context) => HomeScreen(),
        ViewDocument.route: (context) => ViewDocument(),
        PDFScreen.route: (context) => PDFScreen(),
        ScanDocument.route: (context) => ScanDocument(),
        AboutScreen.route: (context) => AboutScreen(),
      },
    );
  }
}
