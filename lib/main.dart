import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/Routes & Bindings/app_pages.dart';
import 'Utils/Routes & Bindings/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Draggable and Drag',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppPages.routes,
      initialRoute: AppRoutes.dragAndDrop,
    );
  }
}
