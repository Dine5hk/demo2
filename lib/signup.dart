import 'package:flutter/material.dart';
import 'package:demo2/main.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("SignUp", style: TextStyle(color: Colors.blue[500],
          fontSize: 28.0,
        fontWeight: FontWeight.bold)
        ),
        Text("Create the Account", style: TextStyle(
          color: Colors.grey[700], fontSize: 24.0, fontWeight:FontWeight.bold
        ),
        ),

         SizedBox(height: 15.0,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Register Number",
            prefixIcon: Icon(Icons.phone)
          ),
        ),

SizedBox(height: 15.0,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter your mail adress",
            prefixIcon: Icon(Icons.mail)
          ),
        ),


      SizedBox(
        height: 15.0,
      ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Password",
            prefixIcon: Icon(Icons.visibility_off)
          ),
        ),


      SizedBox(
        height: 15.0,
      ),

      
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Re-enter your Password",
            prefixIcon: Icon(Icons.visibility_off)
          ),
        ),

        SizedBox(
          height: 15.0,
        ),


        Container(
          width: double.infinity,
          child: RawMaterialButton(
            fillColor: Colors.blue, elevation: 0.0,
            padding: EdgeInsets.symmetric(vertical: 17.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
             onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()
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

