// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_app/bloc/menu_app/cubit/menu_app_cubit.dart';
import 'package:responsive_app/responsive.dart';
import 'package:responsive_app/screen/dashBoard_screen.dart';
import 'package:responsive_app/widget/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuAppCubit, MenuAppState>(
      builder: (context, state) {
        print('menuApp-$state');
        return Scaffold(
          key: context.read<MenuAppCubit>().scaffoldKey,
          drawer: const SideMenu(),
          body: SafeArea(
              child: Row(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(flex: 1, child: SideMenu()),
              Expanded(flex: 5, child: DashBoardScreen())
            ],
          )),
        );
      },
    );
  }
}
