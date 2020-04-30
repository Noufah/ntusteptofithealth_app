import 'package:flutter/material.dart';

class Notifications extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Scaffold(
           appBar: AppBar(
              backgroundColor: Colors.black,
             title: Text('Notifications '),
            ),
            body: new Container(
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  new Padding(
                  padding: const EdgeInsets.fromLTRB(130.0, 300.0, 10.0, 0.0),
                    child: new Text('No Notifications'),
                  ),
            ]
          ),
           ),
          ),
        ),
    );
  }
}
