import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:flutter/material.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
final width = MediaQuery.sizeOf(context).width;
    return Drawer(
      backgroundColor: Palette.scaffoldBgColor,
      width: width,
      child: Column(
        children: [
           SizedBox(height: height*0.10,),
          CircleAvatar(
            radius: 100,
          ),
          SizedBox(height: height*0.07,),

          Text('Sarah White',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing:4 ),),

            SizedBox(height: height*0.07,),
Text('email   : sarahwhite@festahub.com',style: TextStyle(color: Colors.white,fontSize: 20),),

 SizedBox(height: height*0.03,),
Text('phone   : (763-487-8585)',style: TextStyle(color: Colors.white,fontSize: 20),),
  SizedBox(height: height*0.15,),

Container(
  height: 60,
  width: 190,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(24)),
    color: Colors.white),
    child: Center(child: Text('LOG OUT',style: TextStyle(fontSize: 20,color: Palette.scaffoldBgColor,fontWeight: FontWeight.bold),),),
)


        ],
      ),
    );
  }
}
