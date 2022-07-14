import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class Group extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String time;
  final bool unread;

  const Group(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.time,
      required this.unread})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleStyle,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                subtitle,
                style: unread ? unreadStyle : subtitleStyle,
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: TextStyle(
              color: greyColor,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
