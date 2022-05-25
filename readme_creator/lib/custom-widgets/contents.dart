import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/provider/proccess.dart';

import '../const/const.dart';

class SingleContent extends StatelessWidget {
  const SingleContent({
    Key? key,
    required this.title,
    required this.iconColor,
    required this.hintText,
    required this.controller,
    required this.icon,
    required this.function,
  }) : super(key: key);
  final String title;
  final String hintText;
  final Color iconColor;
  final IconData icon;
  final TextEditingController controller;
  final Function(String value) function;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, top: 10, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  style: subtitle,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            color: Colors.white.withOpacity(0.1),
            child: Consumer<Proccess>(
              builder: (context, value, child) {
                return TextField(
                  onChanged: function,
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  style: const TextStyle(color: Colors.white),
                  controller: controller,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                    hintText: hintText,
                    border: const OutlineInputBorder(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DoubleContent extends StatelessWidget {
  const DoubleContent(
      {Key? key,
      required this.title,
      required this.iconColor,
      required this.hintText,
      required this.controller,
      required this.icon,
      required this.controller2,
      required this.function,
      required this.function2})
      : super(key: key);
  final String title;
  final String hintText;
  final Color iconColor;
  final IconData icon;
  final TextEditingController controller;
  final TextEditingController controller2;
  final Function(String value) function;
  final Function(String value) function2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, top: 10, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  style: subtitle,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            color: Colors.white.withOpacity(0.1),
            child: TextField(
              onChanged: function,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              style: const TextStyle(color: Colors.white),
              controller: controller,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                hintText: hintText,
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            color: Colors.white.withOpacity(0.1),
            child: TextField(
              onChanged: function2,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              style: const TextStyle(color: Colors.white),
              controller: controller2,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                hintText: "http://myapp.com",
                border: const OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
