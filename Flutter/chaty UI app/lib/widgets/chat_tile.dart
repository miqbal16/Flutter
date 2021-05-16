import 'package:flutter/material.dart';
import 'package:chaty/themes.dart';

class ChatTile extends StatelessWidget {
  final String image, title, message, textTime;
  final bool unread;
  ChatTile({
    this.image,
    this.title,
    this.message,
    this.textTime,
    this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$image',
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
                title,
                style: titleTextStyle,
              ),
              Text(
                message,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            textTime,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
