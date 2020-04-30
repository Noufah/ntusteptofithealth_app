import 'package:flutter/material.dart';

class Emotional extends StatelessWidget {
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
                        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        child: new Image.asset(
                          'assets/images/EM.png',
                          height: 150.0,
                          width: 450.0,
                          alignment: Alignment.center,
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 0.0),
                        child: new Text(
                          "Thriving while fully experiencing the diverse range of human emotions, experiences and vulnerabilities.",
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
                          child: Text("Academic advice \n If you’re finding the lectures hard to understand then see if some preparatory reading helps. If you’re still finding it hard to keep up – talk it through with your Academic Advisor"
                              "Looking After Yourself During Assessment Time\n"
                              "\n1. Plan down-time"
                              "\n2. Use your breaks effectively:It might feel better to get up, move around, and have a change of scenery not to set in your phone and only uses social media account."
                              "\n3. Go outdoors: Research has shown that time spent outdoors has multiple benefits for our mental health."
                              "\n4. Be social: Make time to see housemates and friends. Academic work can feel lonely and isolating, so spending time with other."
                              "\n5. Exercise!: The gym, a swim, or a brisk walk can be refreshing and get all the neagtive energy out which would motivite to to do more work."
                              "\n6. Eat well and sleep well: This will help your brain to function well and try to Feed your brain with nourishing meals and try to avoid processed foods,"
                              "\n7.Ask for help when you need it, do not be ashmed poeple always there for you."
                              "\n All these tips can keep your mental health up and always postive."
                              "\n As research shows that if a student have an planned days; there mental health could be postive and always like to share it with others",textAlign: TextAlign.center,
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