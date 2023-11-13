import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:flutter/material.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<FilterDrawer> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: widget.width,
      backgroundColor: Palette.scaffoldBgColor,
      child: Center(
        child: Container(
          color: Colors.white,
          width: widget.width * 0.85,
          height: widget.height * 0.35,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding:
                  EdgeInsets.only(left: widget.width * 0.06, top: widget.height * 0.04),
              child: const Text(
                'Gender',
                style: TextStyle(fontSize: 22),
              ),
            ),
            RadioListTile<String>(
              activeColor: Colors.black,
              title:const  Text('Male'),
              value: 'Male',
              groupValue: '',
              onChanged: (value) {
               
              },
            ),
            RadioListTile<String>(
              activeColor: Colors.black,
              title: const Text('Female'),
              value: 'Female',
              groupValue: '',
              onChanged: (value) {
                
              },
            ),
           const  Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: widget.width * 0.3,
                  height: widget.height * 0.05,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Palette.scaffoldBgColor),
                      onPressed: () {},
                      child: const Text('FILTER')),
                ),
                SizedBox(
                  width: widget.width * 0.3,
                  height: widget.height * 0.05,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: Palette.scaffoldBgColor),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: const Text(
                        'Clear',
                        style: TextStyle(color: Palette.scaffoldBgColor),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ]),
        ),
      ),
    );
  }
}

