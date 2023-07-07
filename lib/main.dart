import 'package:bank_islam/page/login_page.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:flutter/material.dart';

import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: HomePage(),
    );
  }
}
