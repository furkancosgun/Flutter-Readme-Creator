// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readme_creator/const/const.dart';
import 'package:readme_creator/provider/proccess.dart';

List<bool> CoreSelected = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
var core = [
  const Text("C"),
  const Text("C++"),
  const Text("CSharp"),
  const Text("Coffeescript"),
  const Text("Dart"),
  const Text("Go"),
  const Text("Java"),
  const Text("JavaScript"),
  const Text("Kotlin"),
  const Text("Php"),
  const Text("Python"),
  const Text("Ruby"),
  const Text("Rust"),
  const Text("Swift"),
  const Text("TypeScript"),
];
List<bool> frontEndList = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
var fronEnd = [
  const Text("Html"),
  const Text("React"),
  const Text("NextJs"),
  const Text("Vue"),
  const Text("NuxtJs"),
  const Text("Gatsby"),
  const Text("Angular"),
  const Text("JQuery"),
  const Text("CSS3"),
  const Text("Sass"),
  const Text("TailwindCSS"),
  const Text("Bootstrap"),
  const Text("Material-UI"),
  const Text("Redux"),
  const Text("Webpack"),
  const Text("Babel"),
  const Text("Svelte"),
];
List<bool> BaDSelected = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
var BaDList = [
  const Text("NodeJs"),
  const Text("Express"),
  const Text("Fast-API"),
  const Text("GraphQL"),
  const Text("Oracle"),
  const Text("NestJs"),
  const Text("MongoDB"),
  const Text("MySql"),
  const Text("PostgreSQL"),
  const Text("Firebase"),
  const Text("Appwrite"),
  const Text("Heroku"),
  const Text("Flask"),
  const Text("Supabase"),
];
List<bool> otherSelected = [false, false, false, false];
var otherList = [
  const Text(".NET"),
  const Text("Django"),
  const Text("Laravel"),
  const Text("Flutter"),
];
List<bool> softwareSelected = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
var softwareList = [
  const Text("Photoshop"),
  const Text("Illustrator"),
  const Text("After-Effects"),
  const Text("Premiere-Pro"),
  const Text("XD"),
  const Text("Figma"),
  const Text("Sketch"),
];

// ignore: camel_case_types
class skillsPage extends StatelessWidget {
  const skillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(children: [
          skillsData(
              title: "CORE",
              dataselectedList: core,
              selectedList: CoreSelected),
          skillsData(
              title: "FRONTEND",
              dataselectedList: fronEnd,
              selectedList: frontEndList),
          skillsData(
              title: "BACKEND AND DATABASE",
              dataselectedList: BaDList,
              selectedList: BaDSelected),
          skillsData(
              title: "OTHER",
              dataselectedList: otherList,
              selectedList: otherSelected),
          skillsData(
              title: "SOFTWARE",
              dataselectedList: softwareList,
              selectedList: softwareSelected)
        ]),
      ),
    );
  }
}

class skillsData extends StatefulWidget {
  const skillsData(
      {Key? key,
      required this.dataselectedList,
      required this.selectedList,
      required this.title})
      : super(key: key);
  final List<Widget> dataselectedList;
  final List<bool> selectedList;
  final String title;
  @override
  State<skillsData> createState() => _skillsDataState();
}

class _skillsDataState extends State<skillsData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.computer,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: title,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Consumer<Proccess>(
              builder: (context, value, child) {
                return ToggleButtons(
                  color: Colors.white,
                  onPressed: (int index) {
                    setState(() {
                      widget.selectedList[index] = !widget.selectedList[index];
                      value.add(widget.dataselectedList[index].toString());
                    });
                  },
                  isSelected: widget.selectedList,
                  children: widget.dataselectedList,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
