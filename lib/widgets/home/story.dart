import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List storyUserName = [
      "hasan",
      "Rahman",
      "Aahil",
      "Rahim",
      "Rakib",
      "seyam",
      "hasanbhai"
    ];
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyUserName.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                ),
                Text(storyUserName[index]),
              ],
            ),
          );
        }),
      ),
    );
  }
}
