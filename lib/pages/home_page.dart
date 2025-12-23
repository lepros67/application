import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final void Function(int) setCurrentIndex;

  const HomePage({
    super.key,
    required this.setCurrentIndex,
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

            const Padding(padding: EdgeInsets.only(top: 20)),

            ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                ),
                onPressed: () {
                  setCurrentIndex(1);
                  print("bouton cliqué");
                },
                child: const Text("Un gros bouton",
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