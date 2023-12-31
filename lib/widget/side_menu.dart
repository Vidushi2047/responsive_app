import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_app/bloc/menu_app/cubit/menu_app_cubit.dart';
import 'package:responsive_app/widget/DrawerListTile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 218, 212, 212),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
                child: Image(image: AssetImage('assets/images/model.jpg'))),
            DrawerListTile(
              icon: Icons.menu,
              text: 'DashBoard',
              onpress: () {
                context.read<MenuAppCubit>().controlMenu();
              },
            ),
            DrawerListTile(
              icon: Icons.currency_rupee,
              text: 'Transaction',
              onpress: () {},
            ),
            DrawerListTile(
              icon: Icons.task,
              text: 'Task',
              onpress: () {},
            ),
            DrawerListTile(
              icon: Icons.document_scanner,
              text: 'Document',
              onpress: () {},
            ),
            DrawerListTile(
              icon: Icons.store,
              text: 'Store',
              onpress: () {},
            ),
            DrawerListTile(
              icon: Icons.notifications,
              text: 'Notification',
              onpress: () {},
            ),
            DrawerListTile(
              icon: Icons.person,
              text: 'Profile',
              onpress: () {},
            ),
            DrawerListTile(
              icon: Icons.settings,
              text: 'Setting',
              onpress: () {},
            )
          ],
        ),
      ),
    );
  }
}
