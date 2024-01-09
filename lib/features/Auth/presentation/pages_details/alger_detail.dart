import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';

class AlgerDetail extends StatelessWidget {
  const AlgerDetail({super.key});

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
                      children: [
                        Text(
                          "Alger",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Algeria, Algeir",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Algiers is the capital city of Algeria, on the country’s Mediterranean coast. It’s known for the whitewashed buildings of the Kasbah, a medina with steep winding streets, Ottoman palaces and a ruined citadel. The 17th-century Ketchaoua Mosque is flanked by 2 large minarets. The Great Mosque has marble columns and arches. The clifftop Catholic basilica of Notre-Dame d'Afrique features a large silver dome and mosaics.",
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
                            Text("Algeria, Algeir")
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
