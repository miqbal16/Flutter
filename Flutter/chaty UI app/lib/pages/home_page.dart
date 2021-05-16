import 'package:chaty/themes.dart';
import 'package:chaty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'message_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35,
        ),
        backgroundColor: greenColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Image.asset(
                  'assets/images/header.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: headerTextStyle,
                ),
                Text(
                  'Travel Freelancer',
                  style: subHeaderTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40.0),
                    ),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friends', style: titleTextStyle),
                      ChatTile(
                        image: 'friend1.png',
                        title: 'Joshuer',
                        message: 'Sorry, you’re not my ty...',
                        textTime: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        image: 'friend2.png',
                        title: 'Gabriella',
                        message: 'I saw it clearly and mig...',
                        textTime: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Groups', style: titleTextStyle),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessagePage()));
                        },
                        child: ChatTile(
                          image: 'group1.png',
                          title: 'Jakarta Fair',
                          message: 'Why does everyone ca...',
                          textTime: '11:11',
                          unread: false,
                        ),
                      ),
                      ChatTile(
                        image: 'group2.png',
                        title: 'Angga',
                        message: 'Here here we can go...',
                        textTime: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        image: 'group3.png',
                        title: 'Bentley',
                        message: 'The car which does not...',
                        textTime: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        image: 'group3.png',
                        title: 'Bentley',
                        message: 'The car which does not...',
                        textTime: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        image: 'group3.png',
                        title: 'Bentley',
                        message: 'The car which does not...',
                        textTime: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
