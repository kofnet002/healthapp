// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:healthapp/widgets/Emojis.dart';
import 'package:healthapp/widgets/Exercise.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
            // backgroundColor: Colors.white,
            activeColor: Colors.white,
            gap: 8,
            // tabBackgroundColor: Colors.blue,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.person, text: "Profile"),
              GButton(icon: Icons.settings, text: "Settings"),
            ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Name and date
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Network !',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),

                              // Size box
                              const SizedBox(
                                height: 8,
                              ),

                              Text(
                                '7 Dec 2023',
                                style: TextStyle(
                                    color: Colors.blue[200],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          // notification icon
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius:
                                    BorderRadiusDirectional.circular(12)),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          )
                        ]),

                    // Size box
                    const SizedBox(
                      height: 25,
                    ),

                    // Search bar
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadiusDirectional.circular(12)),
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: CupertinoSearchTextField(
                          itemColor: Colors.white,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          controller: _textController,
                          backgroundColor: Colors.transparent,
                          placeholderStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    // Size box
                    const SizedBox(
                      height: 30,
                    ),

                    // How do you feel
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'How do you feel ?',
                            style: (TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),

                    // Size box
                    const SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Emojis(emoji: '😔', text: 'Badly'),
                        Emojis(emoji: '😁', text: 'Fine'),
                        Emojis(emoji: '😀', text: 'Well'),
                        Emojis(emoji: '😆', text: 'Excellent'),
                      ],
                    ),

                    // Size box
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )),
            // white back
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 248, 246, 246),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      // Exercises
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(
                            Icons.more_horiz,
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      // Exercises list tile
                      Expanded(
                        child: ListView(
                          children: [
                            Exercise(
                                color: Colors.orange,
                                exerciseType: 'Speaking skills',
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                no_exercise: '16'),
                            Exercise(
                                color: Colors.blue,
                                exerciseType: 'Reading skills',
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                no_exercise: '8'),
                            Exercise(
                                color: Colors.red,
                                exerciseType: 'Coding skills',
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                no_exercise: '20'),
                            Exercise(
                                color: Colors.black,
                                exerciseType: 'Coding skills',
                                icon: Icon(
                                  Icons.code,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                no_exercise: '20'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
