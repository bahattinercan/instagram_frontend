// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble_story.dart';
import 'package:instagram_ui/utils/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List _people = ["Osman", "Hasan", "Mehmet", "Demir", "Selami", "Furkan"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _people.length,
                itemBuilder: (context, index) {
                  return BubbleStory(text: _people[index]);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: _people[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
