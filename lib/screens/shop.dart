import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.grey[300],
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey[500]),
                  SizedBox(width: 10),
                  Text(
                    "search",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      color: Colors.redAccent,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
