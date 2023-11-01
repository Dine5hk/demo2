// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:demo2/HomePage.dart';
import 'package:demo2/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),

    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: loginscreen(),
    );
  }
}


class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:
    const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Demo", style: TextStyle(color: Colors.blue[500],
          fontSize: 28.0,
        fontWeight: FontWeight.bold)
        ),
        Text("Login To the Page", style: TextStyle(
          color: Colors.grey[700], fontSize: 24.0, fontWeight:FontWeight.bold
        ),
        ),
        SizedBox(height: 40,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: "Register Number",
            prefixIcon: Icon(Icons.mail)
          ),
        ),
      SizedBox(
        height: 25.0,
      ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.visibility_off)
          ),
        ),
        SizedBox(
          height: 20.0,
        ),

        Text("Forget Password?", style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold,
        ),
        ),

        SizedBox(
          height: 25.0,
        ),

        Container(
          width: double.infinity,
          child: RawMaterialButton(
            fillColor: Colors.blue, elevation: 0.0,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Demo()
              )
              );
            },
            child: Text("Login", style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
            ),
          ),
        ),

        SizedBox(
          height: 25.0,
        ),

        Container(
          width: double.infinity,
          child: RawMaterialButton(
            fillColor: Colors.blue, elevation: 0.0,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
             onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => signup()
              )
              );
            },
            child: Text("SignUp", style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
            ),
          ),
        ),
      ],
    ),
    );
  }
}







