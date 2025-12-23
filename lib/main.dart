import 'package:flutter/material.dart';
import 'package:untestapp/pages/add_event_page.dart';
import 'package:untestapp/pages/event_page.dart';
import 'package:untestapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  void setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appli nulle"),
        ),

        body: [
          HomePage(setCurrentIndex: setCurrentIndex),
          const EventPage(),
          const AddEventPage()
        ][_currentIndex],

        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),

          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.blue,
          iconSize: 32,
          elevation: 10,
          selectedFontSize: 16,
          unselectedFontSize: 16,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil'
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Liste'
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Ajout'
            )
          ],
        ),
      ),
    );
  }
}