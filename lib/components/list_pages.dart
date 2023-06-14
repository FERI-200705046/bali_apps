import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class listPages extends StatelessWidget {
  listPages({required this.color, required this.text});

  String text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Container(
            height: 25,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: color),
            child: Text(
              text,
              style: TextStyle(fontSize: 15, color: Color(0xff8D8D8D)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
