import 'package:flutter/material.dart';
import 'package:ntutepstofithealths_app/CalenderEdit/event.dart';


//code from: https://github.com/lohanidamodar/flutter_calendar/tree/part2

class EventDetailsPage extends StatelessWidget {
  final EventModel event;

  const EventDetailsPage({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Event details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(event.title, style: Theme.of(context).textTheme.display1,),
            SizedBox(height: 20.0),
            Text(event.Detail)
          ],
        ),
      ),
    );
  }
}