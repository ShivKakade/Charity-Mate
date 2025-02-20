    import 'package:charitymate/pages/Login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String user_type = ""; // Store the user type

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedUserType = user_type; // Track the selected user type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.001,
        backgroundColor: const Color(0xFFADC9F4),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildTopCard(context),
              _buildTextMessageCard(),
              _buildWelcomeMessage(),
              _buildDropdownMenu(),
              _buildNextButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopCard(BuildContext context) {
    return Card(
      color: const Color(0xFFADC9F4),
      elevation: 8,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.translate(
              offset: const Offset(0, -20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: const Image(
                  image: AssetImage('assets/images/charity-mate-logo.png'),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "CHARITY MATE",
              style: TextStyle(
                fontFamily: 'BonaNovaSC',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "NOT ME BUT YOU",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'BonaNovaSC',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextMessageCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
      child: Card(
        color: const Color(0xFFADC9F4),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.only(top: 30),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Center(
            child: Text(
              'Your hub for Change',
              style: TextStyle(
                fontFamily: 'BonaNovaSC',
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeMessage() {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Welcome to our community! Together, we empower change, '
            'foster connections, and create a brighter future. Let\'s make a difference!',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'BonaNovaSC', fontSize: 15),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownMenu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: DropdownMenuWithBorder(
        onUserTypeSelected: (value) {
          setState(() {
            selectedUserType = value;
          });
        },
      ),
    );
  }

  Widget _buildSelectedUserTypeText() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Selected User Type: $selectedUserType',
        style: const TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          backgroundColor: const Color(0xFFADC9F4),
          foregroundColor: Colors.black,
          shadowColor: Colors.black,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          );
        },
        child: const Text(
          'Next',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: 'BonaNovaSC',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class DropdownMenuWithBorder extends StatefulWidget {
  final Function(String) onUserTypeSelected;

  const DropdownMenuWithBorder({super.key, required this.onUserTypeSelected});

  @override
  State<DropdownMenuWithBorder> createState() => _DropdownMenuWithBorderState();
}

class _DropdownMenuWithBorderState extends State<DropdownMenuWithBorder> {
  final List<String> list = <String>['NSS', 'NGO', 'Volunteer'];
  String dropdownValue = 'NGO';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFADC9F4),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.blueAccent, width: 2),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        isExpanded: true,
        elevation: 16,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'BonaNovaSC',
          fontStyle: FontStyle.italic,
        ),
        dropdownColor: const Color(0xFFADC9F4),
        borderRadius: BorderRadius.circular(30),
        underline: Container(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
            user_type = dropdownValue;
            print(user_type);
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'BonaNovaSC',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
