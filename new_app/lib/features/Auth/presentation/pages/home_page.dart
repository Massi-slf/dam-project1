import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';
import 'package:new_app/features/Auth/presentation/pages_details/alger_detail.dart';
import 'package:new_app/features/Auth/presentation/pages_details/contantin_detail.dart';
import 'package:new_app/features/Auth/presentation/pages_details/oran_detail.dart';
import 'package:new_app/features/Auth/presentation/pages_details/setif_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> liked = List.filled(8, false); // List to track liked state

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
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/photos_wilaya/homepage.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    MainColor,
                    MainColor.withOpacity(.2),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Discover",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(200, 4, 62, 94),
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
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
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                              hintText: "Search for cities, places ..."),
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
                    Text(
                      "Best Wilaya",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeItem(
                            image: 'assets/photos_wilaya/alger.jpg',
                            title: 'Alger',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlgerDetail()));
                            },
                            onLike: () {
                              setState(() {
                                liked[0] = !liked[0];
                              });
                            },
                            isLiked: liked[0],
                          ),
                          makeItem(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OranDetail()));
                              },
                              image: 'assets/photos_wilaya/oran.jpg',
                              title: 'Oran',
                              onLike: () {
                                setState(() {
                                  liked[1] = !liked[1];
                                });
                              },
                              isLiked: liked[1]),
                          makeItem(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SetifDetail()));
                              },
                              image: 'assets/photos_wilaya/setif.jpg',
                              title: 'Setif',
                              onLike: () {
                                setState(() {
                                  liked[2] = !liked[2];
                                });
                              },
                              isLiked: liked[2]),
                          makeItem(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ConstantinDetail()));
                              },
                              image: 'assets/photos_wilaya/constantine.jpg',
                              title: 'Constantine',
                              onLike: () {
                                setState(() {
                                  liked[3] = !liked[3];
                                });
                              },
                              isLiked: liked[3]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Best Hotels",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeItem(
                              image: 'assets/photos_wilaya/ha.jpg',
                              title: 'Hotel A',
                              onLike: () {
                                setState(() {
                                  liked[4] = !liked[4];
                                });
                              },
                              isLiked: liked[4]),
                          makeItem(
                              image: 'assets/photos_wilaya/ho.jpg',
                              title: 'Hotel B',
                              onLike: () {
                                setState(() {
                                  liked[5] = !liked[5];
                                });
                              },
                              isLiked: liked[5]),
                          makeItem(
                              image: 'assets/photos_wilaya/hs.jpg',
                              title: 'Hotel C',
                              onLike: () {
                                setState(() {
                                  liked[6] = !liked[6];
                                });
                              },
                              isLiked: liked[6]),
                          makeItem(
                              image: 'assets/photos_wilaya/hc.jpg',
                              title: 'Hotel D',
                              onLike: () {
                                setState(() {
                                  liked[7] = !liked[7];
                                });
                              },
                              isLiked: liked[7]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Add more sections as needed
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({
    required String image,
    required String title,
    VoidCallback? onTap,
    VoidCallback? onLike,
    bool isLiked = false,
  }) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      MainColor.withOpacity(.8),
                      MainColor.withOpacity(.2),
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 25,
              child: GestureDetector(
                onTap: onLike,
                child: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
