import 'package:flutter/material.dart';
import 'package:responsive_app/constant/app_sizes.dart';
import 'package:responsive_app/model/dataInfo.dart';
import 'package:responsive_app/widget/gridViewContainer.dart';

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
