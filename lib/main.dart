import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                // Top Card with Image and Text
                Card(
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
                    height: MediaQuery.of(context).size.height *
                        0.4, // 40% of screen height
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          offset:
                              const Offset(0, -20), // Move upwards by 20 pixels
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height *
                                0.15, // 15% for logo
                            child: const Image(
                              image: AssetImage(
                                  'assets/images/charity-mate-logo.png'),
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
                ),
                // Card with Text Message
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                  child: Card(
                    color: const Color(0xFFADC9F4),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: const EdgeInsets.only(top: 30),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                ),
                // Welcome Message Container
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Welcome to our community! Together, we empower change, '
                        'foster connections, and create a brighter future. Let\'s make a difference!',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'BonaNovaSC', fontSize: 15),
                      ),
                    ),
                  ),
                ),
                // Dropdown Menu
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width *
                        0.1, // 10% of screen width
                    vertical: 10,
                  ),
                  child: const DropdownMenuWithBorder(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      backgroundColor: Color(0xFFADC9F4), // Background color
                      foregroundColor: Colors.black, // Text color
                      shadowColor: Colors.black, // Shadow color
                      elevation: 5, // Elevation level
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Rounded corners
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontFamily: 'BonaNovaSc',
                          fontSize: 20),
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

class DropdownMenuWithBorder extends StatefulWidget {
  const DropdownMenuWithBorder({super.key});

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
        isExpanded: true, // Make the button take the full width
        icon: const SizedBox.shrink(), // Hide the default icon
        elevation: 16,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'BonaNovaSC',
            fontStyle: FontStyle.italic),
        dropdownColor: const Color(0xFFADC9F4),
        borderRadius: BorderRadius.circular(30),
        underline: Container(), // Remove underline
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        selectedItemBuilder: (BuildContext context) {
          return list.map((String value) {
            return Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Icon at the end
              children: <Widget>[
                Expanded(
                  child: Center(
                    // Center-align text
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'BonaNovaSC',
                      ),
                    ),
                  ),
                ),
                const Icon(Icons.arrow_drop_down,
                    color: Colors.black), // Custom icon
              ],
            );
          }).toList();
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(
              // Center-align text inside dropdown items
              child: Text(
                value,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'BonaNovaSC',
                    fontStyle: FontStyle.italic),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
