import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/view/home_screen/detail_card_web.dart';
import 'package:flutter/material.dart';

class HomeScreenWebView extends StatefulWidget {
  const HomeScreenWebView({super.key});

  @override
  State<HomeScreenWebView> createState() => _HomeScreenWebViewState();
}

class _HomeScreenWebViewState extends State<HomeScreenWebView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        // user details
        children: [
          Container(
            width: width * 0.3,
            color: Palette.scaffoldBgColor,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.10,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/david.jpeg'),
                  radius: 100,
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                const Text(
                  'Sarah White',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4),
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                const Text(
                  'email   : sarahwhite@festahub.com',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                const Text(
                  'phone   : (763-487-8585)',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: height * 0.15,
                ),
                Container(
                  height: 60,
                  width: 190,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Colors.white),
                  child: const Center(
                    child: Text(
                      'LOG OUT',
                      style: TextStyle(
                          fontSize: 20,
                          color: Palette.scaffoldBgColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Filter')),
                    SizedBox(
                      width: width * 0.03,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Expanded(
                  child: GridView.builder(
                    addRepaintBoundaries: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 50,
                            childAspectRatio: 1),
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return const DetailCardWeb();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
