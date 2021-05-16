import 'package:chaty/themes.dart';
import 'package:chaty/widgets/chat_input.dart';
import 'package:chaty/widgets/message_tile.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ChatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: lightGreyColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40.0),
                ),
              ),
              padding: const EdgeInsets.all(30.0),
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/group1.png',
                    width: 55,
                    height: 55,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jakarta Fair',
                        style: titleTextStyle,
                      ),
                      Text(
                        '4,209 members',
                        style: subtitleTextStyle,
                      )
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/call.png',
                    height: 65.0,
                    width: 65.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    right: 30.0, bottom: 30.0, left: 30.0),
                child: Column(
                  children: [
                    MessageTile(
                      imageUser: 'assets/images/friend1.png',
                      message: 'How are ya guys?',
                      time: '2:30',
                      sending: false,
                    ),
                    MessageTile(
                      imageUser: 'assets/images/friend3.png',
                      message: 'Find Here :P',
                      time: '3:11',
                      sending: false,
                    ),
                    MessageTile(
                      imageUser: 'assets/images/friend4.png',
                      message: 'Thinking about how to deal\n' +
                          'with this client from hell...',
                      time: '3:11',
                      sending: true,
                    ),
                    MessageTile(
                      imageUser: 'assets/images/friend2.png',
                      message: 'Love them',
                      time: '23:11',
                      sending: false,
                    ),
                    MessageTile(
                      imageUser: 'assets/images/friend2.png',
                      message: 'Love them',
                      time: '23:11',
                      sending: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
