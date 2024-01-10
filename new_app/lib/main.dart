import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/features/splash/ui/splash_view.dart';

void main() {
  runApp(const Page_Home());
}

class Page_Home extends StatelessWidget {
  const Page_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_View(),
    );
  }
}
