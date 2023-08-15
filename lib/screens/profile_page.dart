import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_based_yt_mahdi/utils/text/app_text.dart';

import '../component/toolbar.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed('/edit_profile');
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('Logout'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Image.asset(
              'assets/temp/mark.jpg',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Mark Zuckerberg',
            style: AppText.header2,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Semarang ,Indonesia',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '112',
                    style: AppText.header2,
                  ),
                  Text('Post'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '523',
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
          Text('Data')
        ],
      ),
    );
  }
}
