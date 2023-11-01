import 'package:flutter/material.dart';


class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
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
      ],
      ),
    );
  }
}
