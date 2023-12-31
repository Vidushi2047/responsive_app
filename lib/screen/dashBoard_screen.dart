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
import 'package:responsive_app/widget/storageFileList.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        if (Responsive.isMobile(context)) StorageFileList()
                      ],
                    )),
                if (!Responsive.isMobile(context)) gapW10,
                if (!Responsive.isMobile(context))
                  Expanded(flex: 2, child: StorageFileList())
              ],
            ),
          ],
        ))),
      ),
    );
  }
}

class FileInfoGridView extends StatelessWidget {
  const FileInfoGridView({
    Key? key,
    this.crossAsisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);
  final int crossAsisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dataInfoList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: childAspectRatio,
          crossAxisCount: crossAsisCount,
          mainAxisSpacing: Sizes.p12,
          crossAxisSpacing: Sizes.p16),
      itemBuilder: (context, index) =>
          GridViewContainer(info: dataInfoList[index]),
    );
  }
}

class RecentFileRowColumn extends StatelessWidget {
  const RecentFileRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p10),
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent Files',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          gapH10,
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columnSpacing: Sizes.p12,
                horizontalMargin: 0,
                columns: const [
                  DataColumn(
                      label: Text(
                    'File Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
                  DataColumn(
                    label: Text(
                      'Date',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataColumn(
                      label: Text(
                    'Size',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ))
                ],
                rows: List.generate(dataRecentList.length,
                    (index) => DataRowItem(dataRecentList[index]))),
          )
        ],
      ),
    );
  }

  DataRow DataRowItem(RecentFile file) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: file.color!.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: FaIcon(
                  file.icon,
                  color: file.color,
                ),
              )),
          gapW10,
          Text(file.title!)
        ],
      )),
      DataCell(Row(
        children: [Text(file.date!)],
      )),
      DataCell(Row(
        children: [Text(file.size!)],
      ))
    ]);
  }
}
