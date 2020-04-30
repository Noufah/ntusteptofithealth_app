import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
              ),
              body: new Container(
                color: Colors.white,
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                        child: new Image.asset(
                          'assets/images/SO.png',
                          height: 150.0,
                          width: 250.0,
                          alignment: Alignment.center,
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 0.0),
                        child: new Text(
                          "Developing a sense of connection and belonging, having a well-developed support system, and contributing to a healthy inclusive community. ",
                          style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(140.0, 10.0, 15.0, 0.0),
                        child: new Text(
                          "*Scroll to read*",
                          style: new TextStyle(
                              fontSize: 10.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          reverse: false,
                          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                          child: Text("Students value the social life of being at University and there are many ways it can help with studying."
                              "\n 1)Social networks are really good ways of developing routines around studying, whether that is in the library or in the shared flat or elsewhere."
                              "\n 2)Set Goals with friends as practising arguments or discussing difficulties you are having with an assessment with friends can be both an enjoyable"
                              " way to spend time together and really helpful when stuck with an assessment problem"
                              "\n 3)Join an organisation or society, societies are a proven and effective way to meet like-minded people while also learning a new skill or just taking your mind off the essays. "
                              "\n 4)Start a conversation with a fellow student in class or while you are waiting in line for your coffee.  ",textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12, height: 2.5),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            )
        )
    );
  }
}