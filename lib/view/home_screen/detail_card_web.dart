import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailCardWeb extends StatefulWidget {
  const DetailCardWeb({super.key});

  @override
  State<DetailCardWeb> createState() => _DetailCardWebState();
}

class _DetailCardWebState extends State<DetailCardWeb> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            height: 300,
            width: 500,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 70,
                    color: Palette.scaffoldBgColor,
                  ),
                ),
                const Positioned(
                    left: 0,
                    right: 0,
                    top: 20,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Palette.scaffoldBgColor,
                        radius: 40,
                      ),
                    )),
                const Positioned(
                    left: 0,
                    right: 0,
                    top: 40,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Palette.scaffoldBgColor,
                        radius: 38,
                        backgroundImage: AssetImage('assets/images/david.jpeg'),
                      ),
                    )),
                const Positioned(
                  top: 125,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Hi, My Name Is ',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ),
                ),
                const Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Julian Mitchelle ',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Palette.scaffoldBgColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(),
      ],
    );
  }
}
