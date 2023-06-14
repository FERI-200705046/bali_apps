import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class listimages extends StatelessWidget {
  listimages({required this.wisata, required this.logo, required this.nama});

  String wisata;
  String logo;
  String nama;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(left: 40, bottom: 12),
        height: 212,
        width: 131,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
          image: DecorationImage(
            image: AssetImage(
              wisata,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(logo),
            SizedBox(
              height: 2,
            ),
            Text(
              nama,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
