import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/view/login_screen/login_web_view/login_web_view.dart';
import 'package:festa_login_and_home_page/view/login_screen/mobile_view_login/login_mobile_view.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final mobileView = width < 600;
    return Scaffold(
      backgroundColor: Palette.scaffoldBgColor,
      body: Center(
        child: SingleChildScrollView(
          child: mobileView
              ? const LoginMobileView()
              :const  LoginWebView()
        ),
      ),
    );
  }
}



