import 'package:festa_login_and_home_page/view/home_screen/home_screen_mobile_view.dart';
import 'package:festa_login_and_home_page/view/home_screen/home_screen_web_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
  

    final mobileView = 600 > MediaQuery.sizeOf(context).width;
    return mobileView
        ? const HomeScreeMobileView()
        : const HomeScreenWebView();
  }
}
