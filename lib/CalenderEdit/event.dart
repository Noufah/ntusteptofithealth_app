import 'package:firebase_helpers/firebase_helpers.dart';


//code from: https://github.com/lohanidamodar/flutter_calendar/tree/part2


class EventModel extends DatabaseItem{
  final String id;
  final String title;
  // ignore: non_constant_identifier_names
  final String Detail;
  final DateTime eventDate;

  // ignore: non_constant_identifier_names
  EventModel({this.id,this.title, this.Detail, this.eventDate}):super(id);

  factory EventModel.fromMap(Map data) {
    return EventModel(
      title: data['title'],
      Detail: data['Detail'],
      eventDate: data['event_date'],
    );
  }

  factory EventModel.fromDS(String id, Map<String,dynamic> data) {
    return EventModel(
      id: id,
      title: data['title'],
      Detail: data['Detail'],
      eventDate: data['event_date'].toDate(),
    );
  }
  Map<String,dynamic> toMap() {
    return {
      "title":title,
      "Detail": Detail,
      "event_date":eventDate,
      "id":id,
    };
  }
}