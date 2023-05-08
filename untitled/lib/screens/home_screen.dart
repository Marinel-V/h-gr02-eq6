import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/database_manager.dart';
import 'package:untitled/screens/addroutine_screen.dart';
import 'package:untitled/screens/login_screen.dart';
import 'package:untitled/screens/routines_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  int currentPageIndex = 0;
  DatabaseManager databaseManager = DatabaseManager();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.access_alarm),
            label: 'Log',
          ),
          NavigationDestination(
            icon: Icon(Icons.article),
            label: 'Routines',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          child: ListView(),
        ),
        Column(
          children: [
            Expanded(
              child: RoutinesListWidget(),
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddRoutineScreen()));
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    )))
          ],
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              _logout();
            },
            child: Text('Logout'),
          ),
        )
      ][currentPageIndex],
    );
  }

  Future<void> _logout() async {
    await _auth.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        ModalRoute.withName('/'));
  }

  @override
  void deactivate() {
    super.deactivate();
  }
}
