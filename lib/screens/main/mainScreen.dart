import 'package:Nina_v_2/screens/auth/getIn_google.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../auth/getIn.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Center(
                child: Text(
                  "This is the first day \n of the rest of your life",
                ))),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage('images/3.jpg'),
              ),
            ),
            Center(
              child:
              Text("Are you ready?", style: TextStyle(color: Colors.white)),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                    label: Text('Lets GO'),
                    icon: Icon(Icons.thumb_up),
                    backgroundColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInDemo()),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}