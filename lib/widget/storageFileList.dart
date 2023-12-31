import 'package:flutter/material.dart';
import 'package:responsive_app/constant/app_sizes.dart';
import 'package:responsive_app/widget/chart.dart';
import 'package:responsive_app/widget/storageListTile.dart';

class StorageFileList extends StatelessWidget {
  const StorageFileList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.black12),
        child: const Column(
          children: [
            Text(
              'Storage Detail',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Chart(),
            gapH10,
            StorageListTile(
              title: 'Documents Files',
              text: '1239 Files',
              subtext: '1.3 GB',
              icon: Icons.document_scanner,
              iconColor: Colors.amber,
            ),
            StorageListTile(
              title: 'Media Files',
              text: '1139 Files',
              subtext: '1.5 GB',
              icon: Icons.youtube_searched_for_sharp,
              iconColor: Colors.lightBlue,
            ),
            StorageListTile(
              title: 'Other Files',
              text: '2139 Files',
              subtext: '2.5 GB',
              icon: Icons.file_copy,
              iconColor: Colors.red,
            ),
            StorageListTile(
              title: 'Unknown',
              text: '1139 Files',
              subtext: '1.5 GB',
              icon: Icons.folder,
              iconColor: Colors.purple,
            )
          ],
        ));
  }
}
