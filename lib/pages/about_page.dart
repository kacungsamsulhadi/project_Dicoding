import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_dicoding/model/user.dart';
import 'package:project_dicoding/utils/user_preferences.dart';
import 'package:project_dicoding/widgets/appbar_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          // ProfileWidget(
          //imagePath: user.imagePath,
          // onClicked: () async {},
          //  ),
          const SizedBox(height: 10),
          Container(
            child: Icon(
              CupertinoIcons.person_alt_circle_fill,
              size: 150,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          buildName(user),
          const SizedBox(height: 24),
          //Center(child: buildUpgradeButton()),
          //const SizedBox(height: 24),
          //NumbersWidget(),
          //const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
