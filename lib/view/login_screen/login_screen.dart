import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/view/home_screen/home_screen.dart';
import 'package:festa_login_and_home_page/view/login_screen/custom_widgets/text_field.dart';
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
              ? Container(
                  width: 350,
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Login Text
                        const Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Palette.scaffoldBgColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // email field
                        const SizedBox(
                          width: 290,
                          height: 45,
                          child: LoginTextFormField(
                            hintText: 'email',
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Palette.scaffoldBgColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // password  field

                        SizedBox(
                          width: 290,
                          height: 45,
                          child: LoginTextFormField(
                            hintText: 'password',
                            prefixIcon: const Icon(
                              Icons.password,
                              color: Palette.scaffoldBgColor,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                 
                                },
                                icon: const Icon(
                                  Icons.remove_red_eye,
                                  color: Palette.scaffoldBgColor,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 240,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(
                                      Palette.scaffoldBgColor)),
                              onPressed: () {
                                 Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const HomeScreen()));
                              },
                              child: const Text('Login')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Container(
                          width: 240,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.g_mobiledata,
                                color: Palette.scaffoldBgColor,
                              ),
                              Text(
                                'Sign In With Google',
                                style:
                                    TextStyle(color: Palette.scaffoldBgColor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : Container(
                  width: 500,
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Login Text
                        const Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.w400,
                              color: Palette.scaffoldBgColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // email field
                        const SizedBox(
                          width: 370,
                          height: 60,
                          child: LoginTextFormField(
                            hintText: 'email',
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Palette.scaffoldBgColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // password  field

                        SizedBox(
                          width: 370,
                          height: 60,
                          child: LoginTextFormField(
                            hintText: 'password',
                            prefixIcon: const Icon(
                              Icons.password,
                              color: Palette.scaffoldBgColor,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove_red_eye,
                                  color: Palette.scaffoldBgColor,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 290,
                          height: 55,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(
                                      Palette.scaffoldBgColor)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomeScreen()));
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 22),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Container(
                          width: 290,
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.g_mobiledata,
                                size: 40,
                                color: Palette.scaffoldBgColor,
                              ),
                              Text(
                                'Sign In With Google',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Palette.scaffoldBgColor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
