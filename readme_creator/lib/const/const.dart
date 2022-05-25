// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../screens/badges.dart';
import '../screens/introductionPage.dart';
import '../screens/skillsPage.dart';
import '../screens/socialsPage.dart';
import '../screens/supportPage.dart';

var title = const TextStyle(
    color: Colors.amber,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 2);
var titleBlack = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 2);
TextStyle StitleBlack = const TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
    letterSpacing: 2);

var subtitle =
    const TextStyle(color: Colors.amber, fontSize: 15, letterSpacing: 2);
var content = TextStyle(
    color: Colors.amber.withOpacity(0.5), fontSize: 15, letterSpacing: 2);
var appTitle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 30,
    color: Colors.amber);

var titles = ["Introduction", "Skills", "Socials", "Badges", "Support"];
var contents = [
  "Introduce yourself. Tell visitors about you and who you are.",
  "Show off the languages, frameworks, software and tech that you use.",
  "Connect with your visitors by adding links to your socials.",
  "Add some badges and stats to your profile to make it look better.",
  "Make it easy for people using your products to support you or give donations."
];

var contentList = [
  const introductionPage(),
  const skillsPage(),
  const socialsPage(),
  const Badges(),
  const SupportPage()
];
