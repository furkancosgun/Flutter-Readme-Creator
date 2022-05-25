// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Proccess extends ChangeNotifier {
  String data = "";
  String name = "";
  String collab = "";
  String subtitle = "";
  String based = "";
  String learn = "";
  String elsec = "";
  String port = "";
  String portfUrl = "";
  String work = "";
  String workName = "";
  String contact = "";
  String desc = "";
  String github = "";
  String twitter = "";
  String medium = "";
  String linkedin = "";
  String twitch = "";
  String youtube = "";
  String discord = "";
  String intagram = "";
  String facebook = "";
  String dribble = "";
  String stackoverflow = "";
  String socials = "";
  String coffe = "";
  String badges = "";
  String stats = "";
  String streak = "";
  String graph = "";
  String topLang = "";
  String user = "";
  String skill = "";
  String gitHubName = "";
  String skill2 = "";
  final List<String> _items = [];

  List<bool> isChk = [false, false, false, false];

  String readData() {
    socials =
        "$github$twitter$medium$linkedin$twitch$youtube$discord$intagram$facebook$dribble$stackoverflow";
    if (socials != "") {
      socials =
          "### Socials \n\n <p align='left'>$github$twitter$medium$linkedin$twitch$youtube$discord$intagram$facebook$dribble$stackoverflow</p>\n\n";
    }

    user = "$name$subtitle$desc$based$port$contact$work$learn$collab$elsec"
        .trimLeft();

    if (_items.isNotEmpty) {
      skill2 = "";
      for (var element in _items) {
        skill2 +=
            """<img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/$element.svg" width="36" height="36"/>\n\n""";
      }
      skill = "\n ### Skills \n  <p align='left'> $skill2 </p> \n\n";
    } else {
      skill2 = " ";
      skill = " ";
    }

    if (github != "") {
      isChk[0]
          ? streak = """
<img src="https://github-readme-streak-stats.herokuapp.com/?user=$gitHubName&stroke=ffffff&background=1c1917&ring=0891b2&fire=0891b2&currStreakNum=ffffff&currStreakLabel=0891b2&sideNums=ffffff&sideLabels=ffffff&dates=ffffff&hide_border=true" />\n\n"""
          : streak = "";

      isChk[1]
          ? graph =
              """<img src="https://activity-graph.herokuapp.com/graph?username=$gitHubName&bg_color=1c1917&color=ffffff&line=0891b2&point=ffffff&area_color=1c1917&area=true&hide_border=true&custom_title=GitHub%20Commits%20Graph" alt="GitHub Commits Graph" />\n\n"""
          : graph = "";

      isChk[2]
          ? topLang =
              """<img src="https://github-readme-stats.vercel.app/api/top-langs/?username=$gitHubName&langs_count=10&title_color=0891b2&text_color=ffffff&icon_color=0891b2&bg_color=1c1917&hide_border=true&locale=en&custom_title=Top%20%Languages" alt="Top Languages" />\n\n"""
          : topLang = "";

      isChk[3]
          ? stats =
              """<img src="https://github-readme-stats.vercel.app/api?username=$gitHubName&show_icons=true&hide=&count_private=true&title_color=0891b2&text_color=ffffff&icon_color=0891b2&bg_color=1c1917&hide_border=true&show_icons=true" alt="furkannc's GitHub stats" />\n\n"""
          : stats = "";
    }

    badges = streak + graph + topLang + stats;
    badges != "" ? badges = "<b>My GitHub Stats</b>\n\n$badges" : badges = "";
    data = "$user\n$socials\n$skill\n$badges\n$coffe\n";

    return data;
  }

  void ChangeStats(bool a) {
    isChk[0] = a;
    notifyListeners();
  }

  void ChangeStreak(bool a) {
    isChk[1] = a;
    notifyListeners();
  }

  void ChangeGraph(bool a) {
    isChk[2] = a;
    notifyListeners();
  }

  void ChangeTopLang(bool a) {
    isChk[3] = a;
    notifyListeners();
  }

  void writeName(String a) {
    a != ""
        ? name = "Hi 👋 My name is $a \n =======================\n\n"
        : name = "";
    notifyListeners();
  }

  void writesubtitle(String a) {
    a != "" ? subtitle = """$a\n-------\n\n""" : subtitle = "";
    notifyListeners();
  }

  void writeDesc(String a) {
    a != "" ? desc = "$a\n\n" : desc = "";

    notifyListeners();
  }

  void writeBase(String a) {
    a != "" ? based = "* 🌍  I'm based in $a\n\n" : based = "";

    notifyListeners();
  }

  void writePortfUrl(String a) {
    a != "" ? portfUrl = a : portfUrl = "";

    notifyListeners();
  }

  String getPortfolio() {
    return portfUrl;
  }

  void writePortf(String a) {
    var b = getPortfolio();
    a != "" ? port = "* 🚀 I'm currently working on [$b]($a)\n\n" : port = "";

    notifyListeners();
  }

  void writeContact(String a) {
    a != ""
        ? contact = "* ✉️  You can contact me at [$a](mailto:$a)\n\n"
        : contact = "";

    notifyListeners();
  }

  void writeWork(String a) {
    a != "" ? workName = a : workName = "";

    notifyListeners();
  }

  String getWork() {
    return workName;
  }

  void writeWorkName(String a) {
    var b = getWork();
    a != "" ? work = "* 🚀 I'm currently working on [$b]($a)\n\n" : work = "";

    notifyListeners();
  }

  void writeLearn(String a) {
    a != "" ? learn = "* 🧠  I'm learning $a\n\n" : learn = "";

    notifyListeners();
  }

  void writeCollab(String a) {
    a != ""
        ? collab = "* 🤝  I'm open to collaborating on $a\n\n"
        : collab = "";

    notifyListeners();
  }

  void writeElse(String a) {
    a != "" ? elsec = "* ⚡ $a\n\n" : elsec = "";

    notifyListeners();
  }

//////////////////////////////////////////////////////
  void writeGithub(String a) {
    gitHubName = a;
    a != ""
        ? github =
            """<a href="https://www.github.com/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/github.svg" width="32" height="32" /></a>\n\n"""
        : github = "";
    notifyListeners();
  }

  void writeTwitter(String a) {
    a != ""
        ? twitter =
            """<a href="https://www.twitter.com/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/twitter.svg" width="32" height="32" /></a>\n\n"""
        : twitter = "";
    notifyListeners();
  }

  void writeMedium(String a) {
    a != ""
        ? medium =
            """<a href="https://www.medium.com/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/medium.svg" width="32" height="32" /></a>\n\n"""
        : medium = "";

    notifyListeners();
  }

  void writeLinkedin(String a) {
    a != ""
        ? linkedin =
            """<a href="https://www.linkedin.com/in/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/linkedin.svg" width="32" height="32" /></a>\n\n"""
        : linkedin = "";

    notifyListeners();
  }

  void writeTwitch(String a) {
    a != ""
        ? twitch =
            """<a href="https://www.linkedin.com/in/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/twitch.svg" width="32" height="32" /></a>\n\n """
        : twitch = "";

    notifyListeners();
  }

  void writeYoutube(String a) {
    a != ""
        ? youtube =
            """<a href="https://www.twitch.tv/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/youtube.svg" width="32" height="32" /></a>\n\n"""
        : youtube = "";

    notifyListeners();
  }

  void writeDiscord(String a) {
    a != ""
        ? discord =
            """ <a href="https://discord.com/users/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/discord.svg" width="32" height="32" /></a>\n\n"""
        : discord = "";

    notifyListeners();
  }

  void writeInstagram(String a) {
    a != ""
        ? intagram =
            """<a href="http://www.instagram.com/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/instagram.svg" width="32" height="32" /></a>\n\n"""
        : intagram = "";

    notifyListeners();
  }

  void writeFacebook(String a) {
    a != ""
        ? facebook =
            """<a href="https://www.facebook.com/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/facebook.svg" width="32" height="32" /></a>\n\n"""
        : facebook = "";

    notifyListeners();
  }

  void writeDribble(String a) {
    a != ""
        ? dribble =
            """<a href="https://www.dribbble.com/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/dribbble.svg" width="32" height="32" /></a>\n\n"""
        : dribble = "";

    notifyListeners();
  }

  void writeStackover(String a) {
    a != ""
        ? stackoverflow =
            """<a href="https://www.stackoverflow.com/users/$a" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/Furkannc/Flutter-Readme-Creator/beacaa133dc0b38395c581a1c8cb37bfb1d8465f/icons/stackoverflow.svg" width="32" height="32" /></a>\n\n"""
        : stackoverflow = "";

    notifyListeners();
  }

  void writeCoffe(String a) {
    a != ""
        ? coffe =
            """### Support Me \n<a href="https://www.buymeacoffee.com/$a"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" width="200" /></a>\n\n"""
        : coffe = "";
    notifyListeners();
  }

  void add(String item) {
    item = item.substring(6);
    item = item.substring(0, item.length - 2);
    item = item.trim();
    _items.forEach((element) {
      if (item == element) {
        _items.remove(element);
        notifyListeners();
      }
    });
    _items.add(item);
    notifyListeners();
  }
}
