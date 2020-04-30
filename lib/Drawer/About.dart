import 'package:flutter/material.dart';


class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('About App '),
            ),
            body: new Container(
              color: Colors.white,
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(110.0, 13.0, 0.0, 0.0),
                      child: new Image.asset(
                        'assets/images/try.png',
                        height: 150.0,
                        width: 150.0,
                        alignment: Alignment.center,
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                      child: new Text(
                        "Thanks for Using NTU Steps To Fit Health App",
                        style: new TextStyle(
                            fontSize: 14.0,
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
                        child: Text("The important of maintaining health is to set your body"
                            " to be staged to have wellbeing performing day by day to determines"
                            " your growth and your process in life."
                            "\n Except, sometimes it can be hard to maintain health if you get caught with life fundamentals which can"
                            " result negative impacts to your health based on your daily life routine."
                            " \n Established this fact here an example to demonstrate “people who not being"
                            " active which can affect their wellbeing?”.\n  Keeping up a healthier lifestyle "
                            "can be challenging to combine through student’s studies in higher education "
                            "(e.g. university) or staff who spend most of their day working;"
                            " which could have a certain impact in their lifestyle needs and wellbeing. "
                            "\n However, in some cases these certain types of people could be more vulnerable "
                            "to having a poor health lifestyle, if they are not being able to manage between "
                            "their work environment and their physical health activates or even their health diets. "
                            "\n As being active most of the day is not one of their routine option just because these "
                            "environments does not involve physical movement or exercise while working/ studying."
                            " \n Therefore, according to serval researcher this can results these people to have a "
                            "lower achievement and setbacks in their field environment."
                            "\n As these results can also be leading to develop emotional vulnerability "
                            "needs such as eating more than exercising and less time to sleep etc.,"
                            " which can result illness and diseases though their health maintaining."
                            "\n In the End, this fact have been taken to develop the App to help student who are facing these problems",textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, height: 2.5),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        )
    );
  }
}