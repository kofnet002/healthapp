// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  final emoji;
  final text;

  const Emojis({Key? key, required this.emoji, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(
              20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(12),
              color: Colors.blue[600],
            ),
            child: Text(
              emoji,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
