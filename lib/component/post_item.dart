import 'package:flutter/material.dart';
import 'package:project_based_yt_mahdi/utils/text/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/mark.jpg',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/temp/jpn.jpg',
            width: double.infinity,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'When I close my eyes and think of you, my whole world becomes so much happier.',
          ),
        ],
      ),
    );
  }
}
