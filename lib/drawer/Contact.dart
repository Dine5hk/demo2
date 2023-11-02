import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String phoneNumber;
  final String profilePicture;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.profilePicture,
  });
}

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactListScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue, // Use Vivo's color scheme
      ),
    );
  }
}

class ContactListScreen extends StatefulWidget {
  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contacts = [
    Contact(
      name: 'John Doe',
      phoneNumber: '123-456-7890',
      profilePicture: 'assets/john_avatar.png',
    ),
    Contact(
      name: 'Jane Smith',
      phoneNumber: '987-654-3210',
      profilePicture: 'assets/jane_avatar.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2, // Add shadow
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(contacts[index].profilePicture),
              ),
              title: Text(
                contacts[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18, // Adjust font size
                  color: Colors.black, // Customize text color
                ),
              ),
              subtitle: Text(
                contacts[index].phoneNumber,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey, // Customize text color
                ),
              ),
              trailing: Icon(
                Icons.phone,
                color: Colors.green, // Customize icon color
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactViewScreen(contacts[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ContactViewScreen extends StatelessWidget {
  final Contact contact;

  ContactViewScreen(this.contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact View'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80, // Adjust the avatar size
              backgroundImage: AssetImage(contact.profilePicture),
            ),
            SizedBox(height: 16),
            Text(
              contact.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Customize text color
              ),
            ),
            SizedBox(height: 8),
            Text(
              contact.phoneNumber,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey, // Customize text color
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Add your call functionality here
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    size: 24, // Adjust icon size
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Call',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Customize button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}