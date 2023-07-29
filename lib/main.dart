import 'package:fbnclone/screen/auth_screens.dart';
import 'package:fbnclone/screen/authpin.dart';
import 'package:fbnclone/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
