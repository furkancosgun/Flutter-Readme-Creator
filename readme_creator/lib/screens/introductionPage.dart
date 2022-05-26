// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/provider/proccess.dart';
import '../custom-widgets/contents.dart';

var prcs = Proccess();

// ignore: camel_case_types
class introductionPage extends StatelessWidget {
  const introductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Proccess>(
      builder: (context, value, child) {
        return ListView(
          scrollDirection: Axis.vertical,
          children: [
            SingleContent(
                function: (v) => value.writeName(v),
                hintText: "Peter Parker",
                title: "HI! MY NAME IS:",
                iconColor: Colors.amber,
                controller: _nameController,
                icon: Icons.person_outline),
            SingleContent(
                function: (a) => value.writesubtitle(a),
                hintText: "Flutter Developer",
                title: "SUBTITLE:",
                iconColor: Colors.amber,
                controller: _subtitleController,
                icon: Icons.subtitles),
            SingleContent(
                function: (v) => value.writeDesc(v),
                hintText:
                    "eg: I've been learning to code for 5 years, after switching careers. I started with HTML, but have really found a passion for backend development...",
                title: "LONG DESCRIPTION:",
                iconColor: Colors.amber,
                controller: _descController,
                icon: Icons.description),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "About me",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleContent(
                function: (v) => value.writeBase(v),
                hintText: "Turkey",
                title: "I'M BASED IN:",
                iconColor: Colors.amber,
                controller: _basedController,
                icon: Icons.location_city),
            DoubleContent(
                function: (v) => value.writePortfUrl(v),
                function2: (v) => value.writePortf(v),
                hintText: "MyPortfolio",
                title: "SEE MY PORTFOLIO:",
                iconColor: Colors.amber,
                controller: _portfolioController,
                controller2: _portfolio2Controller,
                icon: Icons.computer),
            SingleContent(
                function: (v) => value.writeContact(v),
                hintText: "myemail@gmail.com",
                title: "CONTACT ME AT:",
                iconColor: Colors.amber,
                controller: _contactController,
                icon: Icons.email),
            DoubleContent(
                function2: (v) => value.writeWorkName(v),
                function: (v) => value.writeWork(v),
                hintText: "MyApp",
                title: "I'M CURRENTLY WORKING ON:",
                iconColor: Colors.amber,
                controller2: _work2Controller,
                controller: _workController,
                icon: Icons.rocket),
            SingleContent(
                function: (v) => value.writeLearn(v),
                hintText: "a new framework",
                title: "I'M CURRENTLY LEARNING:",
                iconColor: Colors.amber,
                controller: _learnController,
                icon: Icons.abc),
            SingleContent(
                function: (v) => value.writeCollab(v),
                hintText: "interesting projects",
                title: "I'M OPEN TO COLLABORATING ON:",
                iconColor: Colors.amber,
                controller: _collaboratingController,
                icon: Icons.handshake),
            SingleContent(
                function: (v) => value.writeElse(v),
                hintText: "I'm secretly Spiderman... but don't tell anyone",
                title: "ANYTHING ELSE:",
                iconColor: Colors.amber,
                controller: _elseController,
                icon: Icons.flash_on),
            const SizedBox(height: 30)
          ],
        );
      },
    );
  }
}

final _nameController = TextEditingController();
final _collaboratingController = TextEditingController();
final _subtitleController = TextEditingController();
final _basedController = TextEditingController();
final _learnController = TextEditingController();
final _elseController = TextEditingController();
final _portfolioController = TextEditingController();
final _portfolio2Controller = TextEditingController();
final _workController = TextEditingController();
final _work2Controller = TextEditingController();
final _contactController = TextEditingController();
final _descController = TextEditingController();
