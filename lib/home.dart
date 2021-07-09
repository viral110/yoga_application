import 'package:Yoga/email.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 270,
              width: 270,
              child: Image(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Cartoon_Yoga_Expert_Man.svg/903px-Cartoon_Yoga_Expert_Man.svg.png")),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Sign With",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Save your progress to access your presonal details",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Email();
                }));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 15),
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Padding(padding: EdgeInsets.only(left: 52)),
                      Icon(
                        Icons.email,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Padding(padding: EdgeInsets.only(left: 40)),
                      Container(
                        height: 22,
                        width: 22,
                        child: Image(
                          image: AssetImage(
                            "images/facebook-letter-logo.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "FaceBook",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
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
