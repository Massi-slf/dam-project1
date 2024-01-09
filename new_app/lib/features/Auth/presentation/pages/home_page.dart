import 'package:flutter/material.dart';

import 'package:new_app/core/utils/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                            color: Color.fromARGB(255, 46, 46, 46),
                            fontSize: 40,
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
                          ),
                          makeItem(
                              image: 'assets/photos_wilaya/oran.jpg',
                              title: 'Oran'),
                          makeItem(
                              image: 'assets/photos_wilaya/setif.jpg',
                              title: 'Setif'),
                          makeItem(
                              image: 'assets/photos_wilaya/constantine.jpg',
                              title: 'Constantine')
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
                              title: 'Alger'),
                          makeItem(
                              image: 'assets/photos_wilaya/ho.jpg',
                              title: 'Oran'),
                          makeItem(
                              image: 'assets/photos_wilaya/hs.jpg',
                              title: 'Setif'),
                          makeItem(
                              image: 'assets/photos_wilaya/hc.jpg',
                              title: 'Constantine')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text(
                    //   "Popular",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.grey[800],
                    //       fontSize: 20),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //   height: 200,
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: <Widget>[
                    //       makeItem(
                    //           image: 'assets/images/greece.jpg', title: 'Greece'),
                    //       makeItem(
                    //           image: 'assets/images/united-states.jpg',
                    //           title: 'United States'),
                    //       makeItem(
                    //           image: 'assets/images/Italy.jpg', title: 'Italy'),
                    //       makeItem(
                    //           image: 'assets/images/canada.jpg', title: 'Canada'),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // SizedBox(
                    //   height: 80,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, title, OnTap}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  MainColor.withOpacity(.8),
                  MainColor.withOpacity(.2),
                ])),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Color.fromARGB(255, 40, 40, 40),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:new_app/core/utils/constants.dart';
// import 'package:new_app/core/utils/suze_config.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 20, top: 70),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.menu_rounded,
//                     size: 30,
//                     color: IconColor,
//                   ),
//                   Expanded(child: Container()),
//                   Container(
//                     margin: const EdgeInsets.only(right: 20),
//                     width: SizeConfig.defaultSize! * 5,
//                     height: SizeConfig.defaultSize! * 5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.grey[400]),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20, bottom: 40),
//             child: Text(
//               "Discover",
//               style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 35,
//                   color: Color.fromRGBO(46, 46, 46, 0.882),
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListView.builder(
//            // itemCount: 3,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (BuildContext context, int index) {
//               return
//                 Container(
//                 width: 200,
//                 height: 300,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     image: DecorationImage(
//                         image: AssetImage("assets/photos/test.png"),
//                         fit: BoxFit.cover)),
//               );
//             },
//           ),

//           // SizedBox(
//           //   height: 40,
//           // ),
//           //tabbar
//           // Container(
//           //   child: Align(
//           //     alignment: Alignment.centerLeft,
//           //     child: TabBar(
//           //       labelPadding: EdgeInsets.only(left: 20,right: 20),
//           //         labelColor: MainColor,
//           //         unselectedLabelColor: Colors.black54,
//           //         controller: tabController,
//           //        isScrollable: true,
//           //        indicatorSize: TabBarIndicatorSize.label,

//           //         tabs: [
//           //           Tab(

//           //           ),
//           //           Tab(
//           //             text: "ATAR",
//           //           ),
//           //           Tab(
//           //             text: "wilaya",
//           //           )
//           //         ]),
//           //   ),
//           // ),
//           // Container(
//           //   height: 300,
//           //   width: double.maxFinite,
//           //   child: TabBarView(
//           //       controller: tabController,
//           //       children: [Text('hi'), Text('hi'), Text('hi')]),
//           // )
//         ],
//       ),
//     );
//   }
// }