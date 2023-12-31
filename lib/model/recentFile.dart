import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecentFile {
  final String? title, date, size;
  final IconData? icon;
  final Color? color;
  RecentFile({this.icon, this.title, this.date, this.size, this.color});
}

List dataRecentList = [
  RecentFile(
      icon: FontAwesomeIcons.fileImage,
      title: "XD File",
      date: "01-03-2021",
      size: "3.5mb",
      color: Colors.yellow),
  RecentFile(
      icon: FontAwesomeIcons.figma,
      title: "Figma File",
      date: "27-02-2021",
      size: "19.0mb",
      color: Colors.pink),
  RecentFile(
      icon: FontAwesomeIcons.folder,
      title: "Document",
      date: "23-02-2021",
      size: "32.5mb",
      color: const Color.fromARGB(255, 11, 125, 219)),
  RecentFile(
      icon: FontAwesomeIcons.fileAudio,
      title: "Sound File",
      date: "21-02-2021",
      size: "3.5mb",
      color: Colors.lightBlue),
  RecentFile(
      icon: FontAwesomeIcons.youtube,
      title: "Media File",
      date: "23-02-2021",
      size: "2.5gb",
      color: Colors.purple),
  RecentFile(
      icon: FontAwesomeIcons.filePdf,
      title: "Sales PDF",
      date: "25-02-2021",
      size: "3.5mb",
      color: Colors.red),
  RecentFile(
      icon: FontAwesomeIcons.fileExcel,
      title: "Excel File",
      date: "25-02-2021",
      size: "34.5mb",
      color: const Color.fromARGB(255, 15, 61, 98)),
];
