import 'package:flutter/material.dart';
import 'package:responsive_app/constant/app_sizes.dart';
import 'package:responsive_app/responsive.dart';
import 'package:responsive_app/screen/dashBoard_screen.dart';

class MyFilesRow extends StatelessWidget {
  const MyFilesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Files',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            ElevatedButton.icon(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsetsDirectional.symmetric(
                            horizontal: 20, vertical: 15))),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add New'))
          ],
        ),
        gapH10,
        Responsive(
            mobile: FileInfoGridView(
              crossAsisCount: _size.width < 650 ? 2 : 4,
            ),
            desktop: FileInfoGridView(
              childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            ),
            tablet: FileInfoGridView()),
      ],
    );
  }
}
