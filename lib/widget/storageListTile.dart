import 'package:flutter/material.dart';
import 'package:responsive_app/constant/app_sizes.dart';

class StorageListTile extends StatelessWidget {
  const StorageListTile({
    Key? key,
    this.title,
    this.text,
    this.subtext,
    this.icon,
    this.iconColor,
  }) : super(key: key);
  final String? title;
  final String? text;
  final String? subtext;
  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
            left: Sizes.p10, right: Sizes.p10, bottom: Sizes.p10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.black45, width: 1),
        ),
        child: Expanded(
          child: ListTile(
            leading: Icon(
              icon!,
              color: iconColor,
            ),
            title: Text(title!),
            subtitle: Text(text!),
            trailing: Text(subtext!),
          ),
        ));
  }
}
