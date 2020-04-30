import 'package:flutter/material.dart';

class Finanical extends StatelessWidget {
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
                          'assets/images/F.png',
                          height: 150.0,
                          width: 250.0,
                          alignment: Alignment.center,
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 0.0),
                        child: new Text(
                          "Developing knowledge and skills for managing financial decisions.",
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
                          child: Text("Open a student bank account with a free overdraft"
                              "\nOpen one or two savings accounts"
                              "\nPlan your budget for the year. "
                              "\nUse this Do My Project company for planning."
                              "\nJob opportunities in term time can be easy to make money "
                              "\nAlso there are other ways of making money including surveys done by the universities"
                              "\nIf you take the train always use a Young Persons 16-25 Railcard and book tickets well in advance."
                              "\nTry to do most of your shopping at the same place and get a loyalty card"
                              "\n Learn to cook: ditch ready meals/pre-prepared salads etc. As supermarkets have basics/value ranges which are very cheap"
                              "\n If you get into trouble: "
                              "1) Let your bank know as soon as possible. They may be able to help."
                              "2) Students service"
                              "3) Your parents",textAlign: TextAlign.center,
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