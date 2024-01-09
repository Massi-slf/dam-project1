import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> bestWilayaPlaces = [
    {"image": 'assets/photos_wilaya/alger.jpg', "title": 'Alger'},
    {"image": 'assets/photos_wilaya/oran.jpg', "title": 'Oran'},
    {"image": 'assets/photos_wilaya/setif.jpg', "title": 'Setif'},
    {"image": 'assets/photos_wilaya/constantine.jpg', "title": 'Constantine'},
  ];

  List<Map<String, dynamic>> bestHotels = [
    {"image": 'assets/photos_wilaya/ha.jpg', "title": 'Alger'},
    {"image": 'assets/photos_wilaya/ho.jpg', "title": 'Oran'},
    {"image": 'assets/photos_wilaya/hs.jpg', "title": 'Setif'},
    {"image": 'assets/photos_wilaya/hc.jpg', "title": 'Constantine'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/photos_wilaya/homepage.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [MainColor, MainColor.withOpacity(.2)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            hintText: "Search for cities, places ...",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildCategorySection("Best Wilaya", bestWilayaPlaces),
                    SizedBox(height: 20),
                    buildCategorySection("Best Hotels", bestHotels),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategorySection(
      String categoryTitle, List<Map<String, dynamic>> places) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          categoryTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (BuildContext context, int index) {
              return makeItem(
                image: places[index]["image"],
                title: places[index]["title"],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget makeItem({required String image, required String title}) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: GestureDetector(
      onTap: () {
        // Add onTap functionality if needed
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              MainColor.withOpacity(.8),
              MainColor.withOpacity(.2),
            ]),
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle like button pressed
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

}
