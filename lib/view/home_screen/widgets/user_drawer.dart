import 'package:festa_login_and_home_page/model/user_model.dart';
import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:festa_login_and_home_page/viewModel/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   final controller = Get.put(DataController());
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return FutureBuilder(
      future: controller.randomData,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

        RandomModel data =snapshot.data;
        
        String name = data.results.first.name.first;
       String  email = data.results.first.email;
       String phone = data.results.first.phone;
       String imageUrl = data.results.first.picture.large;

        return Drawer(
          backgroundColor: Palette.scaffoldBgColor,
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.10,
              ),
               CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(imageUrl),
              ),
              SizedBox(
                height: height * 0.07,
              ),
               Text(
                
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              ),
              SizedBox(
                height: height * 0.07,
              ),
               Text(
                'email   : $email',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: height * 0.03,
              ),
               Text(
                'phone   : $phone',
                style:const  TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: height * 0.15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
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
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
