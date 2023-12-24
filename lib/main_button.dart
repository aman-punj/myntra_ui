import 'dart:html';

import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  late String btnName;
  late String img;

  bool showRedContainer = true;

  MainButton({super.key, required this.btnName, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
      child: Expanded(flex: 1,
        child: GestureDetector(
          onTap: () {
            showRedContainer = false;
          },
          child: Container(
            height: 50,
            width: MediaQuery
                .of(context)
                .size
                .width / 2 - 20,
            decoration: BoxDecoration(
                color: Colors.white,
                // color: Color(0xFF232343),
                borderRadius: BorderRadius.circular(25)
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: NetworkImage(img ), height: 25, width: 25,)
                ,Text(btnName, style: TextStyle(
                    color: Colors.white
                ),)
              ],
            ),
          ),
        ),
      ),);
  }
}
