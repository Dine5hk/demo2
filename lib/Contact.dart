import 'package:flutter/material.dart';


void main() {
  runApp(InitialPage());
}

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: contact(),
      debugShowCheckedModeBanner: false,
    );
  }
} 

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
        primarySwatch: Colors.blue,
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
      name: 'Luffy',
      phoneNumber: '123-456-7890',
      profilePicture: 'image/1.jpg',
    ),
    Contact(
      name: 'Hinata',
      phoneNumber: '987-654-3210',
      profilePicture: 'image/2.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(contacts[index].profilePicture),
            ),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phoneNumber),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactViewScreen(contacts[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddContactScreen(),
            ),
          ).then((newContact) {
            if (newContact != null) {
              setState(() {
                contacts.add(newContact);
              });
            }
          });
        },
        child: Icon(Icons.person_add),
      ),
    );
  }
}

class AddContactScreen extends StatefulWidget {
  @override
  _AddContactScreenState createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String selectedProfilePicture = 'assets/default_avatar.png'; // Default profile picture

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(selectedProfilePicture),
            ),
            TextButton(
              onPressed: () {
                // Here you can implement image selection logic
                // For simplicity, we will set it to a default image
                setState(() {
                  selectedProfilePicture = 'assets/default_avatar.png';
                });
              },
              child: Text('Change Profile Picture'),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final name = nameController.text;
                final phoneNumber = phoneController.text;

                if (name.isNotEmpty && phoneNumber.isNotEmpty) {
                  Navigator.pop(
                    context,
                    Contact(
                      name: name,
                      phoneNumber: phoneNumber,
                      profilePicture: selectedProfilePicture,
                    ),
                  );
                }
              },
              child: Text('Save Contact'),
            ),
          ],
        ),
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
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              contact.phoneNumber,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {

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