import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';

class SetifDetail extends StatelessWidget {
  const SetifDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/photos_wilaya/setif.jpg",
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
                          "Setif",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Algeria, Setif",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sétif is the capital city of the Sétif Province and the 5th most populous city of Algeria, with an estimated population of 410,000 residents in 2015 in an area of more than 127 km².",
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
                            Text("Algeria, Setif")
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
