// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:responsive_app/constant/app_sizes.dart';
import 'package:responsive_app/model/dataInfo.dart';
import 'package:responsive_app/model/recentFile.dart';
import 'package:responsive_app/responsive.dart';
import 'package:responsive_app/widget/gridViewContainer.dart';
import 'package:responsive_app/widget/headers.dart';
import 'package:responsive_app/widget/myFilesRow.dart';
import 'package:responsive_app/widget/recentFileRowColumn.dart';
import 'package:responsive_app/widget/storageFileList.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Headers(),
            gapH10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const MyFilesRow(),
                        gapH10,
                        const RecentFileRowColumn(),
                        if (Responsive.isMobile(context)) gapH10,
                        if (Responsive.isMobile(context))
                          const StorageFileList()
                      ],
                    )),
                if (!Responsive.isMobile(context)) gapW10,
                if (!Responsive.isMobile(context))
                  const Expanded(flex: 2, child: StorageFileList())
              ],
            ),
          ],
        ))),
      ),
    );
  }
}
