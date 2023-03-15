import "package:flutter/material.dart";
import 'feed_item.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 207, 207),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 88, 94),
        title: Text("UI Clone"),
      ),
      body: Column(children: [
        //Section 1. Stories
        Container(
          color: Colors.teal,
          height: 250,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (int i = 0; i < 5; i++) ...[
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 12, 88, 94),
                  ),
                  height: 200,
                  width: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (i == 0)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.yellow,
                                ),
                                height: 10,
                                width: 10,
                              ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ]),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    "Posts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FeedItem(
                  name: "Jennie Kim",
                  content:
                      " Vocalist. ",
                  icon:
                      "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcQ-EbLixhKMODkmK06GkBKJaSYX5WR9RYiucvOmAd5FIq7fZncgI2dVwN5yYarw7dMa-uN7SphBeH-lj3M",
                ),
                FeedItem(
                  name: "Jisoo",
                  content:
                      "Vocalist.",
                  icon:
                      "https://i.mydramalist.com/6BVYd_5f.jpg",
                ),
                FeedItem(
                  name: "Rose",
                  content:
                      "Vocalist.",
                  icon:
                      "https://i.mydramalist.com/66L5p_5_c.jpg",
                ),
                
              ],
            ),
          ),
        ),
      ]),
    );
  }
}