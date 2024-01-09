import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Map<String, dynamic>> favoritePlaces = [
    {"image": 'assets/favorite_places/alger.jpg', "title": 'Alger'},
    {"image": 'assets/favorite_places/constantine.jpg', "title": 'Constantine'},
    {"image": 'assets/favorite_places/setif.jpg', "title": 'Setif'},
    // Add more favorite places as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "My Favorite Places",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: MainColor,
                  ),
                ),
                SizedBox(height: 22),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: favoritePlaces.length,
                  itemBuilder: (BuildContext context, int index) {
                    return makeItem(
                      image: favoritePlaces[index]["image"],
                      title: favoritePlaces[index]["title"],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeItem({required String image, required String title}) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  MainColor.withOpacity(.7),
                  MainColor.withOpacity(.1),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
