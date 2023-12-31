import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'menu_app_state.dart';

class MenuAppCubit extends Cubit<MenuAppState> {
  MenuAppCubit() : super(MenuAppInitial());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    try {
      print('controlMenu');
      if (!_scaffoldKey.currentState!.isDrawerOpen) {
        print('current State');
        _scaffoldKey.currentState!.openDrawer();
      }
    } catch (e) {
      print('error-$e');
    }
  }
}
