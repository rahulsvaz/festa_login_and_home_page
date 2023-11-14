import 'package:festa_login_and_home_page/model/user_model.dart';
import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/viewModel/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class DetailsCard extends StatefulWidget {
  const DetailsCard({super.key});

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DataController());
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return FutureBuilder(
      future: controller.randomData,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

          RandomModel data = snapshot.data;

          String name = data.results.first.name.first;
          String email = data.results.first.email;
          String phone = data.results.first.phone;
          String imageUrl = data.results.first.picture.large;


         
        return
        
        
        
         Padding(

          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            height: height * 0.5,
            child: Stack(
              children: [
                const Positioned(child: SizedBox()),
                Positioned(
                  child: Container(
                    color: Palette.scaffoldBgColor,
                    height: height * 0.1,
                  ),
                ),
                Positioned(
                  top: height * 0.033,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Palette.scaffoldBgColor,
                      radius: width * 0.13,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.039,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage:NetworkImage(imageUrl),
                      radius: width * 0.12,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Hi, My Name Is ',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.24,
                  left: 0,
                  right: 0,
                  child:  Center(
                    child: Text(
                      name,
                      style:const  TextStyle(
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
      },
    );
  }
}
