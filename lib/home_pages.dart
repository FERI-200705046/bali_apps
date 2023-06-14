import 'dart:ffi';
import 'dart:math';

import 'package:bali_apps/components/list_image.dart';
import 'package:bali_apps/components/list_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homePages extends StatelessWidget {
  const homePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 24,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFCD7C5),
                          ),
                          child: Icon(Icons.supervised_user_circle_outlined),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff3B1CFF),
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 44),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("images/gambar1.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Because",
                            style: TextStyle(fontSize: 38),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Bali",
                            style: TextStyle(
                              fontSize: 38,
                              color: Color(0xff3B1CFF),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "is always a",
                            style: TextStyle(
                              fontSize: 38,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Good Idea",
                            style: TextStyle(
                              fontSize: 38,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        child: Text(
                          "There is no other place like Bali in this                                  world. Just enjoy it! ",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Color(0xffA98675)),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFCD7C5),
                        ),
                        child: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      listPages(
                        color: Color(0xff3B1CFF),
                        text: "ubud",
                      ),
                      SizedBox(width: 15),
                      listPages(
                        color: Colors.white,
                        text: "kuta ",
                      ),
                      SizedBox(width: 15),
                      listPages(
                        color: Colors.white,
                        text: "jimbaran",
                      ),
                      SizedBox(width: 15),
                      listPages(
                        color: Colors.white,
                        text: "denpasar",
                      ),
                      SizedBox(width: 15),
                      listPages(
                        color: Colors.white,
                        text: "denpasar",
                      ),
                      SizedBox(width: 15),
                      listPages(
                        color: Colors.white,
                        text: "denpasar",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 50,
                      mainAxisExtent: 205,
                    ),
                    children: [
                      listimages(
                          wisata: "images/images1.png",
                          logo: "images/Vector.png",
                          nama: "surfing"),
                      listimages(
                          wisata: "images/wisata1.jpeg",
                          logo: "images/Vector.png",
                          nama: "surfing"),
                      listimages(
                          wisata: "images/wisata4.jpeg",
                          logo: "images/Vector.png",
                          nama: "surfing"),
                      listimages(
                          wisata: "images/wisata3.jpeg",
                          logo: "images/Vector.png",
                          nama: "surfing"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
