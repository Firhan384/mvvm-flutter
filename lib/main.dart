// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mvvm_flutter/src/auth/auth.dart';
import 'package:mvvm_flutter/src/routes/route_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Auth auth = Auth();
  final bool isLogged = auth.isLogged();
  final MyApp myApp = MyApp(
    initialRoute: isLogged ? '/home' : '/login',
  );
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({
    Key? key,
    required this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Mvvm Flutter',
      initialRoute: initialRoute,
      routes: routeList,
    );
  }
}
