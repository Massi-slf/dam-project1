import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';

class ConstantinDetail extends StatelessWidget {
  const ConstantinDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/photos_wilaya/constantine.jpg",
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
                      children: [
                        Text(
                          "Contantine",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Algeria, Constantine",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Constantine, also spelled Qacentina or Kasantina, is the capital of Constantine Province in northeastern Algeria. During Roman times it was called Cirta and was renamed Constantina in honour of Emperor Constantine the Great.",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            locationTag('28 Hotal'),
                            SizedBox(
                              width: 15,
                            ),
                            locationTag('17 Parks'),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.map_pin,
                              color: MainColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Algeria, Constantine")
                          ],
                        )
                      ],
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

locationTag(String s) {
  return Container(
    child: Text(
      s,
      style: TextStyle(fontSize: 15),
    ),
    padding: EdgeInsets.only(right: 10, left: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: MainColor.withOpacity(0.8)),
  );
}
