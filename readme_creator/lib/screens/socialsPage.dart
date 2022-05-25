// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/custom-widgets/contents.dart';
import 'package:readme_creator/provider/proccess.dart';

class socialsPage extends StatelessWidget {
  const socialsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<Proccess>(
        builder: (context, value, child) {
          return Column(
            children: [
              SingleContent(
                  function: (v) => value.writeGithub(v),
                  title: "GITHUB PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _githubController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeTwitter(v),
                  title: "TWİTTER PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _twitterController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeMedium(v),
                  title: "MEDIUM PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _mediumController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeLinkedin(v),
                  title: "LINKEDIN PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _linkedinController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeTwitch(v),
                  title: "TWİTCH PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _twitchController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeYoutube(v),
                  title: "YOUTUBE PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _youtubeController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeDiscord(v),
                  title: "DISCORD CODE:",
                  iconColor: Colors.amber,
                  hintText: "yourcode",
                  controller: _discordController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeInstagram(v),
                  title: "INSTAGRAM PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _instagramController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeFacebook(v),
                  title: "FACEBOOK PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _facebookController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeDribble(v),
                  title: "DRIBBLE PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _dribbleController,
                  icon: Icons.computer_outlined),
              SingleContent(
                  function: (v) => value.writeStackover(v),
                  title: "STACKOVERFLOW PROFİLE:",
                  iconColor: Colors.amber,
                  hintText: "yourusername",
                  controller: _stackoverflowController,
                  icon: Icons.computer_outlined),
            ],
          );
        },
      ),
    );
  }
}

var _githubController = TextEditingController();
var _twitterController = TextEditingController();
var _mediumController = TextEditingController();
var _linkedinController = TextEditingController();
var _twitchController = TextEditingController();
var _youtubeController = TextEditingController();
var _discordController = TextEditingController();
var _instagramController = TextEditingController();
var _facebookController = TextEditingController();
var _dribbleController = TextEditingController();
var _stackoverflowController = TextEditingController();
