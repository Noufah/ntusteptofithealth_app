import 'package:flutter/material.dart';

class Environmental extends StatelessWidget {
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
                          'assets/images/EV.png',
                          height: 150.0,
                          width: 250.0,
                          alignment: Alignment.center,
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 0.0),
                        child: new Text(
                          "Living in, working in and contributing to safe, healthy, and sustainable environments.",
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
                          child: Text("It takes some effort to juggle your education with your busy life, but having the right study environment can go a long way toward making it easier!"
                              "Take a look at advices to see which ideas will work best for you."
                              "\n1. Pick one place, and like it: If you designate one room or area as your study space, over time your brain will catch on."
                              " You’ll enter into ‘study-mode’ sooner upon entering the space."
                              "\n2. Get comfortable—but not too comfortable:nyone who works from home have a lot to say about this, and their advise is usually contradictory."
                              "Change out of your pajamas before you crack open your books to give your mind another signal that this isn’t lounge time, but study time."
                              "\n3. Buy some plants: certain houseplants improve indoor air quality, and something green and alive just makes a study space more serene."
                              "\n4. Turn off your phone: When you’re studying, your phone can be your biggest distraction. Even just knowing it’s there, and that texts or Instagram likes might be coming through, will affect your focus. Switching it off can be mentally liberating, so unless you’re expecting an important call, do it whenever you sit down to study.",textAlign: TextAlign.center,
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