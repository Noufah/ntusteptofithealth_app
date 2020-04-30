import 'package:flutter/material.dart';

class Physical extends StatelessWidget {
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
                        padding: const EdgeInsets.fromLTRB(40.0, 13.0, 0.0, 0.0),
                        child: new Image.asset(
                          'assets/images/P.png',
                          height: 150.0,
                          width: 250.0,
                          alignment: Alignment.center,
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 0.0),
                        child: new Text(
                          "Practicing healthy behaviors around physical activity, nutrition, sleep, and preventive exams",
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
                          child: Text("\nKeeping active:"
                              "\n1- Choose something you enjoy. If you do not like an activity, it will be hard to stick to, so find the right option for you."
                              "\n2- Get into a routine. Making time for exercise is important, so make slot in your timetable to ensure staying active and fit."
                              "\n3- Exercise with others. Working out with someone else can be more fun"
                              "\n\nHealthy eating:"
                              "\n1- Check your BMI "
                              "\n2- Understand what types of food to eat well and balances healthy diet. Here a video for you as start \n https://www.youtube.com/watch?v=Hwlpf2CEAH0"
                              "\n3-You should eat or drink five portions of fruit and vegetables a day, as they are a good source of vitamins and fibre, which can help to reduce health risks."
                              "\n\nAre you getting enough sleep?"
                              "\nBesause Sleep deficiency also increases the risk of obesity, as you will have less energy and are less likely to make good food choices and more likely to reach for a quick, less healthy alternative."
                              "\n So, 1- Prepare your sleep environment. "
                              "\n So, 2- Plan the dates of your coursework and exams to give yourself enough time to study. "
                              "\n So, 3- Alcohol is known to disturb sleep, so plan some alcohol-free evenings to maximise your sleep benefits during the week. ",textAlign: TextAlign.center,
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