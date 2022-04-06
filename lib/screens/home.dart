import 'package:flutter/material.dart';

import '../widgets/home/post.dart';
import '../widgets/home/story.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List UserName = ["hasan", "Rahman", "Aahil", "Rahim", "Rakib", "seyam"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // story list
          Story(),

          //post

          Expanded(
            child: ListView.builder(
                itemCount: UserName.length,
                itemBuilder: ((context, index) {
                  return Post(name: UserName[index]);
                })),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
