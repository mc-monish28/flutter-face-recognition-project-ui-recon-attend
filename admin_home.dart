import 'package:flutter/material.dart';
import 'package:recon_attend/admin_cards.dart';
import 'package:recon_attend/as_tasks.dart';
import 'package:recon_attend/main.dart';

class adminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  // Define your list of pages or views here
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF302F5F),
        title: const Text('ReconAttend Admin+'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF302F5F),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.escalator_warning,
              color: Colors.white,
            ),
            label: 'Pending Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
            backgroundColor: Color(0xFF302F5F),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AdminCards1(),
          AdminCards2(),
          AdminCards3(),
          AdminCards4(),
          AdminCards5(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your FAB onPressed action here
          Navigator.push(context,
              MaterialPageRoute(builder: (cpntext) => const AssignTasks()));
        },
        child: Icon(Icons.add),
        backgroundColor: const Color(0xFF302F5F),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PendingCards1(),
          PendingCards2(),
          PendingCards3(),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: CircleAvatar(
            maxRadius: 40,
            minRadius: 0,
            backgroundColor: Color(0xFF302F5F),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Monish Coumar S',
          style: TextStyle(
              color: Color(0xFF302F5F),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 22),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          elevation: 2, // Add elevation for a card-like appearance
          margin: EdgeInsets.all(10), // Add margin for spacing
          child: Padding(
            padding: EdgeInsets.all(32), // Add padding inside the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.logout),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2, // Add elevation for a card-like appearance
          margin: EdgeInsets.all(10), // Add margin for spacing
          child: Padding(
            padding: EdgeInsets.all(32), // Add padding inside the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Share Report',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.share_rounded),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
