import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/home/story.dart';
import 'package:instagram_clone/widgets/setting/tagTab.dart';

import '../widgets/setting/gallery_tab.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                    ),
                    CustomText1(
                      text: "Post",
                      number: "30",
                    ),
                    CustomText1(
                      text: "Followers",
                      number: "28",
                    ),
                    CustomText1(
                      text: "Following",
                      number: "30",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Hasan Rahman",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Story(),
                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.photo_album_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.people,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    GalleryTab(),
                    TagTab(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomText1 extends StatelessWidget {
  final String text;
  final String number;
  const CustomText1({
    Key? key,
    required this.text,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
