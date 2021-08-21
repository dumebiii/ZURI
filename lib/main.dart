import 'package:flutter/material.dart';
import 'package:zuri/homepage.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(debugShowCheckedModeBanner: false, home: NAD()),
      designSize: const Size(360, 640),
    );
  }
}
