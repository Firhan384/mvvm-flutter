import 'package:flutter/material.dart';
import 'package:mvvm_flutter/src/shared/utils/color_util.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
 final Widget title;
  final List<Widget> actions;

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: appBarColor,
    );
  }
  
  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}
