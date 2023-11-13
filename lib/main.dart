import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      theme: ThemeData().copyWith(
useMaterial3: true,
        scaffoldBackgroundColor: Palette.scaffoldBgColor
      ),
      home:const  LoginPage(),
    );
  }
}