import 'package:flutter/material.dart';
import 'package:mvvm_flutter/src/shared/widgets/appbar_widget.dart';

class TodolistView extends StatelessWidget {
  const TodolistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        title: Text('to-do-list'),
        actions: [],
      ),
      body: Center(
        child: Text('Page Todolist'),
      ),
    );
  }
}
