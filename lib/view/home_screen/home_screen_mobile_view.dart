import 'package:festa_login_and_home_page/model/user_model.dart';
import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/details_card.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/filter_drawer.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/user_drawer.dart';
import 'package:festa_login_and_home_page/viewModel/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class HomeScreeMobileView extends StatefulWidget {
  const HomeScreeMobileView({super.key});

  @override
  State<HomeScreeMobileView> createState() => _HomeScreeMobileViewState();
}

class _HomeScreeMobileViewState extends State<HomeScreeMobileView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DataController());

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
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
              ),
            );
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

      body: FutureBuilder(
        future: controller.randomData,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          RandomModel data = snapshot.data;

          int count = data.results.length;
          return ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              return const DetailsCard();
            },
          );
        },
      ),
    );
  }
}
