// ignore_for_file: prefer_const_constructors, unused_import

import 'package:demo2/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InitialPage());
}

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: img(),
    );
  }
}

class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  var count = 0;
  var firstImage = false,
      secondImage = false,
      thirdImage = false,
      fourthImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       
        title: Text("hide image"),
      ),

      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Visibility(
                  visible: firstImage,
                  child: Image.asset(
                    "image/1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Visibility(
                  visible: secondImage,
                  child: Image.asset(
                    "image/2.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Visibility(
                  visible: thirdImage,
                  child: Image.asset(
                    "image/3.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Visibility(
                  visible: fourthImage,
                  child: Image.asset(
                    "image/4.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;

                  if (count == 1) {
                    firstImage = true;
                    secondImage = false;
                    thirdImage = false;
                    fourthImage = false;
                  } else if (count == 2) {
                    firstImage = false;
                    secondImage = true;
                    thirdImage = false;
                    fourthImage = false;
                  } else if (count == 3) {
                    firstImage = false;
                    secondImage = false;
                    thirdImage = true;
                    fourthImage = false;
                  } else if (count == 4) {
                    firstImage = false;
                    secondImage = false;
                    thirdImage = false;
                    fourthImage = true;
                    count = 0;
                  } 
                });
              },
              child: Text("Tap me")),
        ],
      ),
    );
  }
}