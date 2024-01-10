
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/login/login.dart';

void main() {
  runApp(const Page_Home());
}

class Page_Home extends StatelessWidget {
  const Page_Home({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage() ,
    ) ;
  }
}
