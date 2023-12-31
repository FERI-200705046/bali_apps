import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SquareTile extends StatelessWidget {
  final String Imagepath;
  final String Connect;
  SquareTile({
    super.key,
    required this.Imagepath,
    required this.Connect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              Imagepath,
              height: 40,
            ),
          ),
          Text(Connect),
        ],
      ),
    );
  }
}