import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_based_yt_mahdi/component/post_item.dart';
import 'package:project_based_yt_mahdi/component/toolbar.dart';
import 'package:project_based_yt_mahdi/utils/color/app_color.dart';
import 'package:project_based_yt_mahdi/utils/text/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
        appBar: Toolbar(
          title: 'Instatter',
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.locationDot,
              ),
            )
          ],
        ),
        body: ListView.separated(
          itemCount: users.length,
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
              height: 40,
            );
          },
          itemBuilder: (context, index) {
            return PostItem(user: users[index]);
          },
        ));
  }

  mockUserFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('user number $i');
    }
  }
}
