import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserPage(),
    );
  }
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Add a background image
        body: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/photos/profile-pic.jpg'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'the traveler',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 104, 104, 104),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'flutter developer',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: MainColor.withOpacity(.5),
                  ),
                ),
                SizedBox(height: 50.0),
                buildInfoRow(Icons.email, 'thetravler@gmail.com', MainColor),
                buildInfoRow(Icons.phone, '+213 556498764', MainColor),
                buildInfoRow(Icons.location_on, 'biskra, mchounch', MainColor),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(IconData icon, String text, Color iconColor) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 25),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24.0,
            color: iconColor,
          ),
          SizedBox(width: 20.0),
          Text(text, style: TextStyle(fontSize: 16.0)),
        ],
      ),
    );
  }
}
