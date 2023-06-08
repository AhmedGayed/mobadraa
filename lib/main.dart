import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UI/splash.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(1080, 2280),
    builder: (BuildContext context ,child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),

    ),

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 2280),
      builder: (BuildContext context ,child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const Splash(),
      ),
    );
  }
}
