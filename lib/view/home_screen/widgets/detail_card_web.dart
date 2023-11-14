import 'package:festa_login_and_home_page/model/user_model.dart';
import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/viewModel/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class DetailCardWeb extends StatefulWidget {
  const DetailCardWeb({super.key});

  @override
  State<DetailCardWeb> createState() => _DetailCardWebState();
}

class _DetailCardWebState extends State<DetailCardWeb> {
  @override
  Widget build(BuildContext context) {
   final controller = Get.put(DataController());
    return FutureBuilder(
      future: controller.randomData,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) { 
          RandomModel data = snapshot.data;

          String name = data.results.first.name.first;
          String email = data.results.first.email;
          String phone = data.results.first.phone;
          String imageUrl = data.results.first.picture.large;


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
                   Positioned(
                      left: 0,
                      right: 0,
                      top: 40,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Palette.scaffoldBgColor,
                          radius: 38,
                          backgroundImage:NetworkImage(imageUrl),
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
                   Positioned(
                    top: 150,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        name,
                        style: const TextStyle(
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
       },
      
    );
  }
}
