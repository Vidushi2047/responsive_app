import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_app/constant/app_sizes.dart';
import 'package:responsive_app/model/recentFile.dart';

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
