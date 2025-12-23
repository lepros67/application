import 'package:flutter/material.dart';

import 'event_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/rat-resting.jpg"),
            const Text(
              "Tema l'appli de merde",
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Poppins'
              ),
            ),

            const Text(
              "Gros bordel",
              style: TextStyle(
                  fontSize: 24
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 20)),

            ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => EventPage()
                      )
                  );
                },
                child : const Text("Un gros bouton",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                )
            )
          ],
        )
    );
  }
}