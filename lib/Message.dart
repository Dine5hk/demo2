import 'package:flutter/material.dart';

void main() {
  runApp(Message());
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inbox'),
        ),
        body: ChatList(),
      ),
    );
  }
}

class Chat {
  final String title;
  final String message;
  final String time;
  final String imageAssetPath;

  Chat({
    required this.title,
    required this.message,
    required this.time,
    required this.imageAssetPath,
  });
}

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<Chat> chats = [
    Chat(
      title: 'Luffy',
      message: 'Pirate King',
      time: '10:00 AM',
      imageAssetPath: 'image/1.jpg',
    ),
    Chat(
      title: 'Hinata',
      message: 'Baaka',
      time: '10:30 AM',
      imageAssetPath: 'image/2.jpg',
    ),

    Chat(
      title: 'Itachi',
      message: 'Clan',
      time: '10:30 AM',
      imageAssetPath: 'image/4.jpg',
    ),
    // Add more chat items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(chats[index].imageAssetPath),
          ),
          title: Text(
            chats[index].title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(chats[index].message),
          trailing: Text(chats[index].time),
          onTap: () {
            // Add functionality for when a chat item is tapped
            // For example, navigate to a chat screen for this contact
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(chats[index]));
          },
        );
      },
    );
  }
}
