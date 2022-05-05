import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/splash_screen.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX State Management Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,

    );
  }
}


