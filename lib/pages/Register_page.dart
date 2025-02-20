import 'package:charitymate/pages/Sing_in_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFADC9F4),
        title: Text('Register'),
      ),
      backgroundColor: Color(0xFFADC9F4),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/charity-mate-logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontFamily: 'BonaNovaC',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    floatingLabelStyle: const TextStyle(
                        color: Colors.black, // Label color when focused
                        fontSize: 17, // Enlarged label size when focused
                        fontFamily: 'BonaNovaSc',
                        fontStyle: FontStyle.italic),
                    labelText: 'Name',
                    labelStyle: const TextStyle(
                      fontFamily: 'BonaNovaSc',
                      fontStyle: FontStyle.italic,
                      color: Colors.black, // Change label text color to white
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners when focused
                      borderSide: const BorderSide(
                        color: Color(0xFF2B6AFF), // Border color when focused
                        width: 3.0, // Increased thickness when focused
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners when enabled
                      borderSide: const BorderSide(
                        width: 2.0, // Thickness when not focused
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    floatingLabelStyle: const TextStyle(
                        color: Colors.black, // Label color when focused
                        fontSize: 17, // Enlarged label size when focused
                        fontFamily: 'BonaNovaSc',
                        fontStyle: FontStyle.italic),
                    labelStyle: const TextStyle(
                      fontFamily: 'BonaNovaSc',
                      fontStyle: FontStyle.italic,
                      color: Colors.black, // Change label text color to white
                    ),
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners when focused
                      borderSide: const BorderSide(
                        color: Color(0xFF2B6AFF), // Border color when focused
                        width: 3.0, // Increased thickness when focused
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners when enabled
                      borderSide: const BorderSide(
                        width: 2.0, // Thickness when not focused
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    floatingLabelStyle: const TextStyle(
                        color: Colors.black, // Label color when focused
                        fontSize: 17, // Enlarged label size when focused
                        fontFamily: 'BonaNovaSc',
                        fontStyle: FontStyle.italic),
                    labelStyle: const TextStyle(
                      fontFamily: 'BonaNovaSc',
                      fontStyle: FontStyle.italic,
                      color: Colors.black, // Change label text color to white
                    ),
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners when focused
                      borderSide: const BorderSide(
                        color: Color(0xFF2B6AFF), // Border color when focused
                        width: 1.5, // Increased thickness when focused
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners when enabled
                      borderSide: const BorderSide(
                        width: 2.0, // Thickness when not focused
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    backgroundColor: const Color(0xFF2B6AFF),
                    foregroundColor: Colors.black,
                    shadowColor: Colors.black,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  {
                    return SignInPage();
                  }));
                    if (_formKey.currentState!.validate()) {
                      // Perform registration logic
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Registering...')),
                      );
                    }
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'BonaNovaSc',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Line on the left side
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10, left: 40),
                          height: 2,
                          color: Colors.black, // Line color
                        ),
                      ),

                      // Text in the middle
                      const Text('Or Sign Up With'),

                      // Line on the right side
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 40),
                          height: 2,
                          color: Colors.black, // Line color
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/google-signin-logo.webp'),
                        ),
                        SizedBox(width: 20),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/facebook-logo.png'),
                        ),
                        SizedBox(width: 20),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/google-signin-logo.webp'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
