import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:list/routers/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: Routes.routes,
    );
  }
}
