import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material 3 Example',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF00D632), // Green
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900], // Dark background
          elevation: 0, // Remove the shadow
          titleTextStyle: TextStyle(
            color: Colors.white, // Title text color
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.fullscreen),
          onPressed: () {
            // Handle the fullscreen icon tap
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle), // Changed to account circle icon
            onPressed: () {
              // Handle the account circle icon tap
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Placeholder(), // Replace with your first page content
          Placeholder(), // Replace with your second page content
          ThirdPage(), // Third page content with expanded numpad, amount counter, and currency switcher
          Placeholder(), // Replace with your fourth page content
          Placeholder(), // Replace with your fifth page content
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', // Empty label to remove text
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.grey[900], // Dark background for the navbar
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end, // Align to the bottom of the screen
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.20), // Move amount counter up by 20% of screen height
        Center(
          child: Text(
            '\$0', // Default number display
            style: TextStyle(fontSize: 36.0), // Adjust the font size as needed
          ),
        ),
        SizedBox(height: 16.0), // Add spacing
        Container(
          padding: EdgeInsets.all(16.0), // Add padding around the currency switcher
          decoration: BoxDecoration(
            color: Colors.grey[900], // Dark background
            borderRadius: BorderRadius.circular(8.0), // Rounded dropdown
          ),
          child: DropdownButton<String>(
            value: 'USD', // Default currency
            onChanged: (newValue) {
              // Handle currency change
            },
            items: <String>['USD', 'EUR', 'GBP', 'JPY', 'CAD']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 8.0), // Add spacing
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2.0, // Adjust the aspect ratio for horizontal expansion
            ),
            shrinkWrap: true,
            itemCount: 12, // Added buttons 0, 9, and '<'
            itemBuilder: (context, index) {
              if (index == 9) {
                return ElevatedButton(
                  onPressed: () {
                    // Handle the "0" button tap
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[900]), // Dark background
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0), // No rounded corners
                      ),
                    ),
                  ),
                  child: Text('0'),
                );
              } else if (index == 10) {
                return ElevatedButton(
                  onPressed: () {
                    // Handle the "." button tap
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[900]), // Dark background
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0), // No rounded corners
                      ),
                    ),
                  ),
                  child: Text('.'),
                );
              } else if (index == 11) {
                return ElevatedButton(
                  onPressed: () {
                    // Handle the backspace button tap
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[900]), // Dark background
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0), // No rounded corners
                      ),
                    ),
                  ),
                  child: Text('<'),
                );
              } else {
                return ElevatedButton(
                  onPressed: () {
                    // Handle number button tap
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[900]), // Dark background
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0), // No rounded corners
                      ),
                    ),
                  ),
                  child: Text('${index + 1}'), // Adjusted index
                );
              }
            },
          ),
        ),
        SizedBox(height: 16.0), // Add spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Handle the "Request" button tap
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[900]), // Dark background
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded button corners
                  ),
                ),
              ),
              child: Text('Request'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle the "Pay" button tap
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[900]), // Dark background
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded button corners
                  ),
                ),
              ),
              child: Text('Pay'),
            ),
          ],
        ),
      ],
    );
  }
}
