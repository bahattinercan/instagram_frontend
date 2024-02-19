import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/account_tab1.dart';
import 'package:instagram_ui/utils/account_tab2.dart';
import 'package:instagram_ui/utils/account_tab3.dart';
import 'package:instagram_ui/utils/account_tab4.dart';
import 'package:instagram_ui/utils/bubble_story.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  domatesFunc() {
    print("marul");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "456",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text("Posts")
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "29841",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text("Followers")
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "155",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text("Following")
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: domatesFunc,
                      child: Text(
                        "Bahattin",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Full Stack Developer",
                      ),
                    ),
                    Text(
                      "https://github.com/bahattinercan",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Center(child: Text("Edit Profile")),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Center(child: Text("Ad tools")),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Center(child: Text("Insights")),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BubbleStory(text: "Story 1"),
                    BubbleStory(text: "Story 1"),
                    BubbleStory(text: "Story 1"),
                  ],
                ),
              ),
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                )
              ]),
              Expanded(
                  child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
