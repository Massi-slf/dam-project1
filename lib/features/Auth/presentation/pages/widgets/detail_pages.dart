import 'dart:ui';

import 'package:flutter/material.dart';


class DetailPages extends StatelessWidget {
  const DetailPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/photos_wilaya/alger.jpg",
              fit: BoxFit.contain,
              height: 300,
              width: double.infinity,
            ),
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.white],
                      stops: [0.4, 0, 7])),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.white.withOpacity(0.65),
                    padding: EdgeInsets.all(35),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("TEST")],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
