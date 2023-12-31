import 'package:flutter/material.dart';
import 'package:responsive_app/model/dataInfo.dart';

import '../constant/app_sizes.dart';

class GridViewContainer extends StatelessWidget {
  const GridViewContainer({
    Key? key,
    required this.info,
  }) : super(key: key);
  final DataInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(Sizes.p10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Icon(
                  Icons.document_scanner,
                  color: info.color!,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                  )),
            ],
          ),
          gapH10,
          Text(
            info.title!,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          gapH10,
          LinearProgressIndicator(
            value: info.percentage! / 100,
            minHeight: 5,
            color: info.color,
            backgroundColor: info.color!.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          gapH10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(info.numOfFiles!.toString()),
              Text(info.totalStorage!)
            ],
          )
        ],
      ),
    );
  }
}
