import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';

import 'screens/home.dart';

PageController pageController = PageController(initialPage: 0);
int currentIndex = 0;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
        backgroundColor: Colors.blueGrey.shade100,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
