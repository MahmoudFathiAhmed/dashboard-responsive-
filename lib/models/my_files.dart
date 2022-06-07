import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/resources/assets_manager.dart';
import '../screens/resources/string_manager.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: AppStrings.documents,
    numOfFiles: 1328,
    svgSrc: IconAssets.documents,
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title:  AppStrings.googleDrive,
    numOfFiles: 1328,
    svgSrc: IconAssets.googleDrive,
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title:  AppStrings.oneDrive,
    numOfFiles: 1328,
    svgSrc: IconAssets.oneDrive,
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title:  AppStrings.documents,
    numOfFiles: 5328,
    svgSrc: IconAssets.dropBox,
    totalStorage: "7.3GB",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
