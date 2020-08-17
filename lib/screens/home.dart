import '../widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import './focus_screen.dart';
import './relax_screen.dart';
import './sleep_screen.dart';
import '../main.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      extendBody: true,
      appBar: CustomAppBar(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          FocusScreen(),
          RelaxScreen(),
          SleepScreen(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
