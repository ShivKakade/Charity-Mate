import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const  Text(
              'abc@gmail.com',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const ProfileOption(title: 'Volunteer Since dd/mm/yyyy'),
            const ProfileOption(title: 'Personal Information'),
            const ProfileOption(title: 'Event attended 10'),
            const ProfileOption(title: 'Settings'),
            const Spacer(),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                const  BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                const BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: ''),
                const BottomNavigationBarItem(icon: CircleAvatar(child: Text('P')), label: ''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final String title;
  const ProfileOption({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
