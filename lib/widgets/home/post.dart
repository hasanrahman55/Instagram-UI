import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String name;
  const Post({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[200],
        ),

        //bottom icon
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  SizedBox(width: 20),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 20),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),

        //bottom like by

        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
          child: Row(
            children: [
              Text("Likes by "),
              Text("aahil",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(" and 5 other",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
        ),
        //comment by
      ],
    );
  }
}
