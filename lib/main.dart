import 'package:flutter/material.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  Image ava = Image.asset("images/ava.png");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card Profile",
      home: Scaffold(
        backgroundColor: Color(0xFFC4B6AB),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  foregroundImage: ava.image
                ),
                Text(
                  "Habie Putra",
                  style: TextStyle(
                      fontFamily: "Libre",
                      fontSize: 25.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold),
                ),
                Text("FULLSTACK DEVELOPMENT",
                    style: TextStyle(fontSize: 10.0, letterSpacing: 2.0)),
                SizedBox(
                  width: 200.0,
                  height: 25.0,
                  child: Divider(color: Colors.brown.shade500,
                    thickness: 1.0,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 65.0),
                  color: Colors.brown.shade400,
                  child: ListTile(
                      leading:
                          Icon(Icons.phone_iphone, color: Color(0xFFC4B6AB)),
                      title: Text(
                        "+62-811-994-124-4",
                        style:
                            TextStyle(fontSize: 15.0, color: Color(0xFFC4B6AB),letterSpacing: 1.0),
                      )),
                ),
                Card(
                  color: Colors.brown.shade400,
                  margin: EdgeInsets.symmetric(horizontal: 65.0),
                  child: ListTile(
                    leading: Icon(Icons.email_rounded, color: Color(0xFFC4B6AB)),
                    title: Text("habieputra4@gmail.com", style: TextStyle(color: Color(0xFFC4B6AB))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
