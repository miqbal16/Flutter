import 'package:flutter/material.dart';
import 'package:chaty/themes.dart';

class MessageTile extends StatelessWidget {
  final String message;
  final String imageUser;
  final String time;
  final bool sending;

  MessageTile({this.message, this.imageUser, this.time, this.sending});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: sending ? TextDirection.rtl : TextDirection.ltr,
        children: [
          Image.asset(
            imageUser,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 11.0,
              horizontal: 20.0,
            ),
            decoration: BoxDecoration(
              color: boldGreyColor,
              borderRadius: sending
                  ? BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
            ),
            child: Column(
              crossAxisAlignment:
                  sending ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: titleTextStyle.copyWith(
                    color: lightBlackColor,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  time,
                  style: subtitleTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
