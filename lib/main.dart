import 'dart:io';

import 'package:dars_29/utils/extensions.dart';
import 'package:dars_29/utils/sizes.dart';
import 'package:dars_29/widgets/landscape_widget.dart';
import 'package:dars_29/widgets/portrait_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  final List<String> menus = [
    "How it Works",
    "Product",
    "Pricing",
    "Resources"
  ];

  PreferredSizeWidget mobileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      title: const Text(
        "team.flow",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.menu),
              Text(
                "MENU",
                style: TextStyle(
                  fontSize: 6,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  PreferredSizeWidget desktopAppBar() {
    return AppBar(
      title: const Text(
        "team.flow",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        for (var i = 0; i < menus.length; i++)
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  menus[i],
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                5.width(),
                const Icon(
                  CupertinoIcons.chevron_down,
                  size: 12,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        20.width(),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Log in",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFECE5FF),
            shape: const RoundedRectangleBorder(),
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
          ),
          child: const Text(
            "Get started free",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF794CFF),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: screenWidth > 800 ? desktopAppBar() : mobileAppBar(),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
