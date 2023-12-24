// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myntra_ui/main_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// Logo and insider button
        title: Container(
          height: 100,
          // width: ,
          color: Colors.transparent,
          child: Row(
            children: [
              SizedBox(
                height: 80,
                width: 40,
                child: Image.network(
                    '''https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2d_M0PbRKWW5wBDqqFaWudCjoFjQbK-l9m9GIAeMoouBJR5-atSYpmnnre5xjbWdRqrE&usqp=CAU'''),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "BECOME",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn, // Adjust blend mode as needed
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: const [
                          Color(0xFFb38f00),
                          Color(0xFFffd633)
                        ], // Your gradient colors
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds);
                    },
                    child: Text(
                      'INSIDER >',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),

        /// three actions and buttons
        // bell
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.network(
                'https://cdn.iconscout.com/icon/premium/png-512-thumb/notification-bell-7688743-6351219.png?f=webp&w=256'),
          ),
          IconButton(
              onPressed: () {},
              icon: Image.network(
                  "https://cdn.iconscout.com/icon/premium/png-512-thumb/favorite-73-213574.png?f=webp&w=256")),
          IconButton(
              onPressed: () {},
              icon: Image.network(
                  'https://cdn.iconscout.com/icon/premium/png-512-thumb/shopping-bag-1485087-1256003.png?f=webp&w=256'))
        ],
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SearchBar(),
              SizedBox(
                // color: Colors.red,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp_FfNc03wSbrLJ22Y0VtfA5Lc7jn652a1XDjNPFQkBGoifLUPULDdCQkbc3L3oKPePiU',
                                height: 30,
                                width: 30,
                              ),
                              Text('Fashion'),
                            ],
                          )),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(25)),
                        // child: ElevatedButton(
                        //     onPressed: () {
                        //       setState(() {
                        //
                        //       });
                        //     },
                        // child: Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Image.network(
                        //       'https://image.similarpng.com/very-thumbnail/2020/04/cosmetic-products-ad-3d-skin-care-brand-cream-lotion-png.png',
                        //       height: 30,
                        //       width: 30,
                        //     ),
                        //     Text('Beauty'),
                        //   ],
                        // )
                        // ),
                      ),
                    )),

                    // MainButton(btnName: "Fashion", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKWmmwdp96K4lcZIFIdpk3YjrxVszU3GSXSyT8YmaMdrE1T48NOz7fcWl526TwTYyl4-k&usqp=CAU")
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                print('searching');
              },
              icon: Icon(Icons.search_sharp),
              color: Colors.grey,
            ),
            Expanded(
              flex: 6,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "try searching",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                  border: InputBorder.none,
                  // contentPadding: EdgeInsets.zero
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
                )),
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mic_none),
                )),
          ],
        ),
      ),
    );
  }
}
