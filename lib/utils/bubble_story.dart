import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  final String text;

  const BubbleStory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }
}
