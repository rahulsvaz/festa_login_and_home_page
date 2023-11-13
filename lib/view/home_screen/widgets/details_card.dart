import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatefulWidget {
  const DetailsCard({super.key});

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        height: 300,
        child: Stack(
          children: [
            const Positioned(child: SizedBox()),
            Positioned(
                child: Container(
              color: Palette.scaffoldBgColor,
              height: height * 0.1,
            )),
            Positioned(
                top: height * 0.033,
                left: 0,
                right: 0,
                child: Center(
                    child: CircleAvatar(
                  backgroundColor: Palette.scaffoldBgColor,
                  radius: width * 0.13,
                ))),
            Positioned(
              top: height * 0.039,
              left: 0,
              right: 0,
              child: Center(
                child: CircleAvatar(
                  backgroundImage: const AssetImage(
                    'assets/images/david.jpeg',
                  ),
                  radius: width * 0.12,
                ),
              ),
            ),
            Positioned(
              top: height * 0.17,
              left: 0,
              right: 0,
              child: const Center(
                child: Text(
                  'Hi, My Name Is ',
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
            ),
            Positioned(
              top: height * 0.20,
              left: 0,
              right: 0,
              child: const Center(
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
    );
  }
}
