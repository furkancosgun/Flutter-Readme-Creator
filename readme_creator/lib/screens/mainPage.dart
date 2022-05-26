// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/provider/proccess.dart';

import '../const/const.dart';

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

int selectedIndex = 0;

var prcs = Proccess();

// ignore: camel_case_types
class _mainPageState extends State<mainPage> {
  void skip(int value) {
    setState(() {
      if (selectedIndex >= 0 && selectedIndex <= 4) selectedIndex += value;
    });
  }

  void skip2(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      drawerScrimColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.amber),
        backgroundColor: Colors.black,
        title: Text("Readme Creator", style: appTitle),
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Github Github Readme Creator',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.fact_check_outlined),
              title: const Text('INTRODUCTION'),
              onTap: () {
                skip2(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_border_outlined),
              title: const Text('SKILL'),
              onTap: () {
                skip2(1);

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.co_present_outlined),
              title: const Text('SOCIAL'),
              onTap: () {
                skip2(2);

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.badge_sharp),
              title: const Text('BADGES'),
              onTap: () {
                skip2(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.support_outlined),
              title: const Text('SUPPORT'),
              onTap: () {
                skip2(1);

                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 250,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "© 2022 Furkan COŞGUN \n",
                  style: StitleBlack,
                ),
                SelectableText(
                  "Github:\nhttps://github.com/Furkannc",
                  style: StitleBlack,
                )
              ],
            )
          ],
        ),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: screenSize.width / 2,
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          titles[selectedIndex],
                          style: title,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          contents[selectedIndex],
                          style: content,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: selectedIndex != 0 ? true : false,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.amber),
                                onPressed: () => skip(-1),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Icon(Icons.chevron_left),
                                    Text("Previous section")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Consumer<Proccess>(
                                builder: (context, value, child) {
                                  return ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.amber),
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(
                                              text: value.readData()))
                                          .then((_) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                backgroundColor: Colors.amber,
                                                content: Text(
                                                    "Markdown copied to clipboard")));
                                      });
                                    },
                                    child: const Text(
                                      "Copy to Clipboard",
                                    ),
                                  );
                                },
                              ),
                              Visibility(
                                visible: selectedIndex != titles.length - 1
                                    ? true
                                    : false,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.amber),
                                    onPressed: () => skip(1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Next section"),
                                        Icon(Icons.chevron_right)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.black,
                  width: screenSize.width / 2,
                  child: contentList[selectedIndex],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Consumer<Proccess>(
                  builder: (context, value, child) {
                    return Text(
                      value.readData(),
                      style: subtitle,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
