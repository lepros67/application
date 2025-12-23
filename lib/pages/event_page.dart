import 'package:flutter/material.dart';


class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  final events = [
    {
      "title": "1er ligne",
      "subtitle": "Ceci est la 1er ligne"
    },
    {
      "title": "2eme ligne",
      "subtitle": "Ceci est la 2eme ligne"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {

              final event = events[index];

              final title = event['title'];
              final subtitle = event['subtitle'];

              return Card(
                child: ListTile(
                    leading: Image.asset("assets/images/us2.png"),
                    title: Text("$title"),
                    subtitle: Text("$subtitle"),
                    trailing: Icon(Icons.more_vert)
                ),
              );
            }
        )
    );
  }

}
