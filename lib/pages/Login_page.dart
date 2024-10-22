import 'package:flutter/material.dart';

import 'Register_page.dart';
import 'Sing_in_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFADC9F4),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildTopCard(context),
              _buildTextMessageCard(),
              _buildWelcomeMessage(),
              _buildNextButton(context),
            ],
          ),
        ),
      ),
    );
  }
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

Widget _buildNextButton(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
    child: Row(children: <Widget>[
      Expanded(
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
                builder: (context) => RegisterPage(),
              ),
            );
          },
          child: const Text(
            'Register',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: 'BonaNovaSC',
              fontSize: 20,
            ),
          ),
        ),
      ),
      SizedBox(width: 20),
      Expanded(
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
                builder: (context) => SignInPage(),
              ),
            );
          },
          child: const Text(
            'Sign In',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: 'BonaNovaSC',
              fontSize: 20,
            ),
          ),
        ),
      ),
    ]),
  );
}
