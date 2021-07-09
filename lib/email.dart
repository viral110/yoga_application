import 'package:Yoga/bottom.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  // ignore: missing_return

  @override
  Widget build(BuildContext context) {
    setVal() async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setBool('seen', true);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 15,
            // ),

            Text(
              "Connect to email",
              style: TextStyle(
                  fontSize: 26, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              " it's recommended to connect your email\n address for us to preotect your\n information",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Your Name",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            // SizedBox(
            //   height: 0,
            // ),
            TextField(
              decoration: InputDecoration(
                hintText: "email123@gmail.com",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Set Password",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
              ),
            ),
            SizedBox(
              height: 80,
            ),

            Container(
                margin: EdgeInsets.only(left: 80),
                alignment: Alignment.center,
                width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red,
                ),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bottom()));
                      
                    },
                    child: Text("CONFIRM"))),
          ],
        ),
      ),
    );
  }
}
