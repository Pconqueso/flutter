// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
              onChanged: (value) => _username = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) => _password = value,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactScreen()),
                );
              },
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 14, 45, 50)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text('Alex Cornejo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 14, 45, 50))),
                  IconButton(
                    icon: Icon(Icons.edit, color: Color.fromARGB(255, 14, 45, 50)),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Section 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(child: Icon(Icons.call, color: Colors.white), backgroundColor: Color.fromARGB(255,172,205,83)),
                  CircleAvatar(child: Icon(Icons.chat, color: Colors.white), backgroundColor: Color.fromARGB(255,249,219,72)),
                  CircleAvatar(
                    radius: 54,
                    child: ClipOval(
                      child: Image.asset('assets/fotos/persona.jpg', fit: BoxFit.cover, width: 108, height: 108),
                    ),
                  ),
                  CircleAvatar(child: Icon(Icons.star_border, color: Colors.white), backgroundColor: Color.fromARGB(255,227,112,116)),
                  CircleAvatar(child: Icon(Icons.share, color: Colors.white), backgroundColor: Color.fromARGB(255,80,153,248)),
                ],
              ),
              SizedBox(height: 16),
              // Section 3: Profile Info
              sectionTitle('Profile Info'),
              infoCard('Date of Birth', 'Jan 01, 2000'),
              SizedBox(height: 16),
              // Section 4: Contact Info
              sectionTitle('Contact Info'),
              infoCard('Main Number', '+1 234-567-8910'),
              SizedBox(height: 16),
              // Section 5: Email Info
              sectionTitle('Email Info'),
              infoCard('Email', 'john.doe@example.com'),
              SizedBox(height: 16),
              // Section 6: Address Info
              sectionTitle('Address Info'),
              infoCard('Address', '123 Main St, City, Country'),
            // Section 7: Social Media
              SizedBox(height: 16),
              Card(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(child: FaIcon(FontAwesomeIcons.facebookF, color: Colors.white), backgroundColor: Colors.blueAccent),
                      CircleAvatar(child: FaIcon(FontAwesomeIcons.twitter, color: Colors.white), backgroundColor: Colors.lightBlue),
                      CircleAvatar(child: FaIcon(FontAwesomeIcons.instagram, color: Colors.white), backgroundColor: Colors.redAccent),
                      CircleAvatar(child: FaIcon(FontAwesomeIcons.googlePlusG, color: Colors.white), backgroundColor: Colors.red),
                      CircleAvatar(child: Icon(Icons.add, color: Colors.white), backgroundColor: Colors.deepOrange),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
        IconButton(
          icon: Icon(Icons.add, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget infoCard(String title, String subtitle) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.black)),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.black),
          onPressed: () {},
        ),
      ),
    );
  }
}
