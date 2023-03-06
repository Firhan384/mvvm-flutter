import 'package:flutter/material.dart';
import 'package:mvvm_flutter/src/pages/login/view/login_view.dart';
import 'package:mvvm_flutter/src/pages/to-do-list/view/todolist_view.dart';

Map<String, WidgetBuilder> routeList = {
  '/login': (context) => LoginView(),
  '/home': (context) => const TodolistView()
};
