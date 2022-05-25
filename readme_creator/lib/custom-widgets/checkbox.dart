// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final Function onChange;
  final bool isChecked;
  final String text;

  // ignore: use_key_in_widget_constructors
  CustomCheckbox(
      {required this.isChecked, required this.onChange, required this.text});

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          widget.onChange(_isSelected);
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.1)),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          children: [
            AnimatedContainer(
              margin: const EdgeInsets.all(4),
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(3.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  )),
              width: 30,
              height: 30,
              child: _isSelected
                  ? const Icon(Icons.check, color: Colors.white, size: 20)
                  : null,
            ),
            Text(
              widget.text,
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
