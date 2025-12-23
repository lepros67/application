import 'package:flutter/material.dart';
import 'package:untestapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appli nulle"),
        ),
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
            items: [


              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil'
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Liste'
              )


            ],
        ),
      ),
    );
  }
}






