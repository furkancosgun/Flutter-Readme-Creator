// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/custom-widgets/contents.dart';
import 'package:readme_creator/provider/proccess.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Proccess>(builder: (context, value, child) {
      return SingleContent(
          function: (v) => value.writeCoffe(v),
          title: "BUY ME A COFFE",
          iconColor: Colors.amber,
          hintText: "htttps:www.buymeacoffe.com/",
          controller: _coffeControl,
          icon: Icons.coffee);
    });
  }
}

var _coffeControl = TextEditingController();
