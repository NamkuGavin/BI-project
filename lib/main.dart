import 'package:bank_islam/page/login_page.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
      ),
      home: LoginPage(),
    );
  }
}
