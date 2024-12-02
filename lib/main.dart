import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lab08_task3/controllers/product_controller.dart';
import 'package:lab08_task3/views/home_screen.dart';

void main() {
  Get.put(ProductController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
