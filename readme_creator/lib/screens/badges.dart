import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/custom-widgets/checkbox.dart';
import 'package:readme_creator/provider/proccess.dart';

class Badges extends StatelessWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Proccess>(
      builder: (context, value, child) {
        return Column(
          children: [
            CustomCheckbox(
              isChecked: value.isChk[0],
              onChange: (bool? a) => {value.ChangeStreak(a!)},
              text: "COMMIT STREAK",
            ),
            CustomCheckbox(
              isChecked: value.isChk[1],
              onChange: (bool? a) => {value.ChangeGraph(a!)},
              text: "COMMIT GRAPH",
            ),
            CustomCheckbox(
              isChecked: value.isChk[2],
              onChange: (bool? a) => {value.ChangeTopLang(a!)},
              text: "TOP LANGUAGES",
            ),
            CustomCheckbox(
              isChecked: value.isChk[3],
              onChange: (bool? a) => {value.ChangeStats(a!)},
              text: "STATS",
            ),
          ],
        );
      },
    );
  }
}
