// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:demo2/Message.dart';
import 'package:demo2/calc.dart';
import 'package:demo2/image.dart';



class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Luffy'),
                accountEmail: Text('luffy@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('image/1.jpg'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('image/2.jpg'),
                  )
                ],
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Message()
                  )
                  );
                },
                leading: Icon(Icons.inbox),
                title: Text('Inbox'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => img()
                  )
                  );
                },
                leading: Icon(Icons.send),
                title: Text('Sent'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Calc()
                  )
                  );
                },
                leading: Icon(Icons.drafts),
                title: Text('Draft'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

              ExpansionTile(
                leading: Icon(Icons.book),
                title: Text('Others'),
                subtitle: Text('Choose'),
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          Message()));
                    },
                    leading: Icon(Icons.outbox),
                    title: Text('OutBox'),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          Message()));
                    },
                    leading: Icon(Icons.save),
                    title: Text('Save'),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          Message()));
                    },
                    leading: Icon(Icons.snooze),
                    title: Text('Snoozed'),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          Message()));
                    },
                    leading: Icon(Icons.star),
                    title: Text('Starred'),
                  ),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Demo'),
          actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
          bottom: TabBar(
  
            tabs: [
              Icon(Icons.group),
              Text('Chats'),
              Text('Updates'),
              Text('Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Community'),
            ),
            Center(
              child: Container(
                child: Text('Chat box'),
                color: Colors.purple,
              ),
            ),
            Center(
              child: Icon(Icons.music_note),
            ),
            Center(
              child: Text('Hai'),
            ),
      
          ],
        ),
      ),
    );
  }
}
