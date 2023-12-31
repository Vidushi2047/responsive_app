import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataInfo {
  final String? title, totalStorage;
  final int? numOfFiles;
  final double? percentage;
  final Color? color;
  final IconData? icon;

  DataInfo(
      {this.title,
      this.totalStorage,
      this.numOfFiles,
      this.percentage,
      this.color,
      this.icon});
}

List dataInfoList = [
  DataInfo(
    title: "Documents",
    numOfFiles: 1328,
    icon: FontAwesomeIcons.file,
    totalStorage: "1.9GB",
    color: Colors.purple,
    percentage: 35,
  ),
  DataInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    icon: FontAwesomeIcons.googleDrive,
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  DataInfo(
    title: "One Drive",
    numOfFiles: 1328,
    icon: FontAwesomeIcons.folder,
    totalStorage: "1GB",
    color: Colors.lightBlue,
    percentage: 10,
  ),
  DataInfo(
    title: "Documents",
    numOfFiles: 5328,
    icon: FontAwesomeIcons.file,
    totalStorage: "7.3GB",
    color: Color.fromARGB(255, 8, 48, 81),
    percentage: 78,
  ),
];
