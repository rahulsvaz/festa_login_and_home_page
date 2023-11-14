import 'package:festa_login_and_home_page/model/user_model.dart';
import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/detail_card_web.dart';
import 'package:festa_login_and_home_page/view/home_screen/widgets/filter_drawer.dart';
import 'package:festa_login_and_home_page/viewModel/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class HomeScreenWebView extends StatefulWidget {
  const HomeScreenWebView({super.key});

  @override
  State<HomeScreenWebView> createState() => _HomeScreenWebViewState();
}

class _HomeScreenWebViewState extends State<HomeScreenWebView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DataController());
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      endDrawer: FilterDrawer(width: width, height: height),
      body: FutureBuilder(
        future: controller.randomData,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          RandomModel data = snapshot.data;

          String name = data.results.first.name.first;
          String email = data.results.first.email;
          String phone = data.results.first.phone;
          String imageUrl = data.results.first.picture.large;
          return Row(
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
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl.toString()),
                      radius: width * 0.08,
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4),
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Text(
                      'email   :  $email',
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.018),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      'phone   : $phone',
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.012),
                    ),
                    SizedBox(
                      height: height * 0.15,
                    ),
                    Container(
                      height: height * 0.05,
                      width: width * 0.20,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          'LOG OUT',
                          style: TextStyle(
                              fontSize: width * 0.02,
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
                        Builder(
                          builder: (context) {

                            return ElevatedButton(

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Palette.scaffoldBgColor,
                                
                              
                              ),
                                onPressed: () {
                                  Scaffold.of(context).openEndDrawer();

                                }, child: const Text('Filter'));
                          }
                        ),
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
                                crossAxisSpacing: 5,
                                childAspectRatio: 1),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const DetailCardWeb();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
