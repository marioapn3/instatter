import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:project_based_yt_mahdi/component/app_text_field.dart';
import 'package:project_based_yt_mahdi/component/toolbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Edit Profile',
      ),
      body: Column(
        children: [
          AppTextField(hintText: 'First name'),
          AppTextField(hintText: 'Last name'),
          AppTextField(hintText: 'Phone number'),
          AppTextField(hintText: 'Location'),
        ],
      ),
    );
  }
}
