import 'package:flutter/material.dart';
import 'package:chaty/themes.dart';

class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: whiteColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 16.0,
      ),
      child: Row(
        children: [
          Text(
            'Type Message ...',
            style: subtitleTextStyle.copyWith(
              fontSize: 16.0,
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/images/send_btn.png',
            width: 35.0,
            height: 35.0,
          ),
        ],
      ),
    );
  }
}
