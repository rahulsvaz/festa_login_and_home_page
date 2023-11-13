import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/view/home_screen/home_screen_web_view.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/details_card.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/filter_drawer.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/user_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    final mobileView = 600 > MediaQuery.sizeOf(context).width;
    return mobileView
        ? Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: Builder(
                builder: (context) {
                  return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.move_up_rounded,
                        color: Colors.white,
                      ));
                },
              ),
              actions: [
                Builder(
                  builder: (context) => TextButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Text(
                      'FILTER',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ],
              backgroundColor: Palette.scaffoldBgColor,
            ),
            drawer: const UserDrawer(),

            // filter Drawer
            endDrawer: FilterDrawer(width: width, height: height),

            body: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const DetailsCard();
              },
            ),
          )
        : const HomeScreenWebView();
  }
}
