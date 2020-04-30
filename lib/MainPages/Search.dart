import 'package:flutter/material.dart';
import 'package:ntutepstofithealths_app/HeathAdviser/Physical.dart';
import 'package:ntutepstofithealths_app/HeathAdviser/Emotional.dart';
import 'package:ntutepstofithealths_app/HeathAdviser/Social.dart';
import 'package:ntutepstofithealths_app/HeathAdviser/Finanical.dart';
import 'package:ntutepstofithealths_app/HeathAdviser/Occupational.dart';
import "package:ntutepstofithealths_app/HeathAdviser/Enviromental.dart";
import 'package:ntutepstofithealths_app/HeathAdviser/Intellectual.dart';
import 'package:ntutepstofithealths_app/HeathAdviser/Spiritual.dart';
import 'package:video_player/video_player.dart';



class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Search Menu'),
          ),
          body:Center(
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.pinkAccent,
                    tabs: [
                      Tab(icon: Icon(Icons.font_download)),
                      Tab(icon: Icon(Icons.mood)),
                      Tab(icon: Icon(Icons.directions_walk)),
                    ]
                ),
                body: TabBarView(
                  children: <Widget>[
                    new Container(
                      color: Colors.white,
                      child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 110.0, top:20.0),
                                  child: Text(
                                  'Health Adviser',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                                ),
                              ],
                            ),
                            new Padding(
                              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                              child: new Image.asset(
                                'assets/images/health.png',
                                height: 350.0,
                                width: 450.0,
                                alignment: Alignment.center,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToPhysical(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    color: Colors.blue,
                                    child: Text(" Physical",
                                    ),
                                  ),
                                ),
                                Container(
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToEmotional(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    color: Colors.pinkAccent,
                                    child: Text(" Emotional Mental",
                                    ),
                                  ),
                                ),
                                Container(
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToSocial(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    color: Colors.orange,
                                    child: Text(" Social",
                                    ),
                                  ),
                                ),
                                ]
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Container(
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToFinanical(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    color: Colors.lightGreenAccent,
                                    child: Text(" Financial",
                                    ),
                                  ),
                                ),
                            Container(
                              child: RaisedButton(

                                onPressed: () {
                                  navigateToOccupational(context);
                                  },
                                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                ),
                                color: Colors.indigo,
                                child: Text(" Occupational",
                                ),
                              ),
                            ),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: () {
                                          navigateToEnviromental(context);
                                          },
                                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                        ),
                                        color: Colors.green,
                                        child: Text(" Environmental",
                                        ),
                                      )
                                  ),
                                ]
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToIntellectual(context);
                                      },
                                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                                      color: Colors.yellow,
                                      child: Text("Intellectual",
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToSpiritual(context);
                                      },
                                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                      ),
                                      color: Colors.lightBlueAccent,
                                      child: Text(" Spiritual",
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                          ]
                      )
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 90.0, top:50 ),
                                ),
                                Text(
                                  'Meet up Activites',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:40.0, right: 2.0, bottom: 30.0),
                                  child: Icon(Icons.today,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Text(
                                  'Running Sessions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 100.0),
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToRunningSessions(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:40.0, right: 2.0, bottom: 30.0),
                                  child: Icon(Icons.today,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Text(
                                  'Tennis Sessions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight:FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 100.0),
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToTennisSessions(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:40.0, right: 2.0, bottom: 30.0),
                                  child: Icon(Icons.today,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Text(
                                  'Walking Sessions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight:FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 100.0),
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToWalkingSessions(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:30.0, right: 1.0, bottom: 30.0),
                                  child: Icon(Icons.today,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Text(
                                  'Gym Sessions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 100.0),
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToGymSessions(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:30.0, right: 1.0, bottom: 30.0),
                                  child: Icon(Icons.today,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Text(
                                  'Football Sessions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight:FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 100.0),
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToFootballSessions(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:30.0, right: 1.0, bottom: 30.0),
                                  child: Icon(Icons.today,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Text(
                                  'Basketball Sessions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight:FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 90.0),
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToBasketballSessions(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:30.0, right: 1.0, bottom: 30.0),
                                  child: Icon(Icons.today,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Text(
                                  'Swimming Sessions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight:FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 90.0),
                                  child: RaisedButton(
                                    onPressed: () {
                                      navigateToSwimmingSessions(context);
                                    },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 100.0, top:20.0),
                                    child: Text("Workout Activities",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ]
                              ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top:40.0, bottom: 40.0,),
                                      ),
                                      Text(
                                        '30 Days Challenge',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 140.0),
                                        child: RaisedButton(
                                          onPressed: () {
                                            navigateToDaysChallenge(context);
                                          },
                                          shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: Icon(Icons.arrow_forward,
                                            color: Colors.pinkAccent,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:40.0, bottom: 40.0),
                                    ),
                                  Text(
                                    'Strength Training',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 150.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToStrengthTraining(context);
                                      },
                                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Icon(Icons.arrow_forward,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:40.0,bottom: 40.0),
                                  ),
                                  Text(
                                    'Muscles Building',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 150.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToMusclesBuilding(context);
                                      },
                                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Icon(Icons.arrow_forward,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:40.0,bottom: 40.0),
                                  ),
                                  Text(
                                    'Fat Burn',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 210.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToFatBurn(context);
                                      },
                                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Icon(Icons.arrow_forward,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:40.0,bottom: 40.0),
                                  ),
                                  Text(
                                    'Flexibility and Mobility',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 120.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToFlexibility(context);
                                      },
                                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Icon(Icons.arrow_forward,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:40.0,bottom: 40.0),
                                  ),
                                  Text(
                                    'Warm Up and Cool Down',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 100.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToWarmCoolDown(context);
                                      },
                                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Icon(Icons.arrow_forward,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                        ),
                    )
                  ]
                ),
              ),
            )
          ),
        ),
      ),
    );
  }
}

Future navigateToPhysical(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Physical()));
}
Future navigateToEmotional(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Emotional()));
}

Future navigateToSocial(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Social()));
}

Future navigateToFinanical(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Finanical()));
}

Future navigateToOccupational(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Occupational()));
}

Future navigateToEnviromental(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Environmental()));
}

Future navigateToIntellectual(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Intellectual()));
}

Future navigateToSpiritual(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Spiritual()));
}

Future navigateToRunningSessions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => RunningSessions()));
}

Future navigateToTennisSessions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => TennisSessions()));
}

Future navigateToWalkingSessions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WalkingSessions()));
}

Future navigateToSwimmingSessions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SwimmingSessions()));
}

Future navigateToBasketballSessions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => BasketballSessions()));
}

Future  navigateToGymSessions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => GymSessions()));
}

Future navigateToFootballSessions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FootballSessions()));
}


Future navigateToDaysChallenge(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DayChallenge()));
}


Future navigateToStrengthTraining(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => StrengthTraining()));
}

Future navigateToMusclesBuilding(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MusclesBuilding()));
}

Future navigateToFatBurn(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FatBurn()));
}

Future navigateToFlexibility(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Flexibility()));
}
Future navigateToWarmCoolDown(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WarmCoolDown()));
}


class RunningSessions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Running Sessions'),
          ),
          body:SingleChildScrollView(
              scrollDirection: Axis.vertical,
            child: new Column(
              children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top:10.0, left: 60.0, right: 10.0),
                  child: new Image.asset(
                    'assets/images/running.jpg',
                    height: 150.0,
                    width: 250.0,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: new Text(
                    "Running session for 20 mintues",
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where: NTU Library City"
                        "\nWhen: Everyday At 8am"
                        "\nGender: Female and Male ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where: NTU Library Clifton"
                        "\nWhen: Everyday At 9am"
                        "\nGender: Female", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where:Nottingham City Center "
                        "\nWhen: Everyday At 10am"
                        "\nGender: Male", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Running session for 30 mintues", textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where: NTU Library City"
                        "\nWhen: Everyday At 11am"
                        "\nGender: Female and Male ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where: NTU Library Clifton"
                        "\nWhen: Everyday At 12pm"
                        "\nGender: Female", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where:Nottingham City Center "
                        "\nWhen: Everyday At 1pm"
                        "\nGender: Male", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Running session for 60 mintues", textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where: NTU Library City"
                        "\nWhen: Everyday At 2pm"
                        "\nGender: Female and Male ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where: NTU Library Clifton"
                        "\nWhen: Everyday At 3pm"
                        "\nGender: Female", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where:Nottingham City Center "
                        "\nWhen: Everyday At 4pm"
                        "\nGender: Male", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ]
            )
          )
        )
      )
    );
  }
}

class TennisSessions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Tennis Sessions'),
          ),
            body:SingleChildScrollView(
              child: new Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top:10.0, left: 40.0, right: 10.0),
                          child: new Image.asset(
                            'assets/images/tennis.jpg',
                            height: 150.0,
                            width: 250.0,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0,right: 10.0),
                          child: new Text(
                            "Tennis session for 20 mintues", textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: 14.0,
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                            "Where: Lee Westwood Sports Centre,Nottingham Trent University,Clifton Campus.\n(As only Tennis cort available)"
                                "\n\nWhen: Everyday At 8am"
                                "\nGender: Female and Male", textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 9am"
                                "\nGender: Female",textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 10am"
                                "\nGender: Male",textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                            "Tennis session for 30 mintues", textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: 14.0,
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 11am"
                                "\nGender: Female and Male", textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 12pmm"
                                "\nGender: Female",textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 2pm"
                                "\nGender: Male",textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                            "Tennis session for 60 mintues", textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: 14.0,
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 3pm"
                                "\nGender: Female and Male", textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 4pm "
                                "\nGender: Female",textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                          child: new Text(
                                "\nWhen: Everyday At 5pm"
                                "\nGender: Male",textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              ),
            )
        ),
      ),
    );
  }
}

class WalkingSessions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Walking Sessions'),
          ),
          body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:10.0, left: 75.0, right: 10.0),
                  child: new Image.asset(
                    'assets/images/walking.jpg',
                    height: 150.0,
                    width: 250.0,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Walking session for 20 mintues", textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Where: NTU Library City"
                        "\nWhen: Everyday At 8am"
                        "\nGender: Female and Male ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Where: NTU Library Clifton"
                        "\nWhen: Everyday At 9am"
                        "\nGender: Female", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where:Nottingham City Center "
                        "\nWhen: Everyday At 10am"
                        "\nGender: Male", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Walking session for 30 mintues", textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 60.0),
                  child: new Text(
                    "Where: NTU Library City"
                        "\nWhen: Everyday At 8am"
                        "\nGender: Female and Male ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Where: NTU Library Clifton"
                        "\nWhen: Everyday At 9am"
                        "\nGender: Female", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Where:Nottingham City Center "
                        "\nWhen: Everyday At 10am"
                        "\nGender: Male", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Walking session for 60 mintues", textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Where: NTU Library City"
                        "\nWhen: Everyday At 8am"
                        "\nGender: Female and Male ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Where: NTU Library Clifton"
                        "\nWhen: Everyday At 9am"
                        "\nGender: Female", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 60.0),
                  child: new Text(
                    "Where:Nottingham City Center "
                        "\nWhen: Everyday At 10am"
                        "\nGender: Male", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GymSessions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Text('Gym Sessions'),
                ),
                body:SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:10.0, left: 60.0, right: 10.0),
                            child: new Image.asset(
                              'assets/images/Gym.jpg',
                              height: 150.0,
                              width: 250.0,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: new Text(
                              "Gym session for 20 mintues",
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 8am"
                                  "\nGender: Female and Male ", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 9am"
                                  "\nGender: Female", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: Clifton Campus sports "
                                  "\nWhen: Everyday At 10am"
                                  "\nGender: Female", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 11am"
                                  "\nGender: Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where:Nottingham City Center "
                                  "\nWhen: Everyday At 12pm"
                                  "\nGender: Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Running session for 30 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 2pm"
                                  "\nGender: Female and Male ", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 3pm"
                                  "\nGender: Female", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: Clifton Campus sports "
                                  "\nWhen: Everyday At 4pm"
                                  "\nGender: Female", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 5pm"
                                  "\nGender: Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where:Nottingham City Center "
                                  "\nWhen: Everyday At 6pm"
                                  "\nGender: Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Running session for 60 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 7pm"
                                  "\nGender: Female and Male ", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 8pm"
                                  "\nGender: Female", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: Clifton Campus sports "
                                  "\nWhen: Everyday At 9pm"
                                  "\nGender: Female", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where: City Campus sports "
                                  "\nWhen: Everyday At 9am"
                                  "\nGender: Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 60.0),
                            child: new Text(
                              "Where:Nottingham City Center "
                                  "\nWhen: Everyday At 10am"
                                  "\nGender: Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}

class FootballSessions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Text('Football Sessions'),
                ),
                body:SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:10.0, left: 60.0, right: 10.0),
                            child: new Image.asset(
                              'assets/images/football.jpg',
                              height: 150.0,
                              width: 250.0,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:10.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Football session for 20 mintues",
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Where: Lee Westwood Sports Centre,Nottingham Trent University,Clifton Campus.\n(As only Football outdoor available)"
                                  "\n\nWhen: Everyday At 8am"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 9am"
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 10am"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Football session for 30 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 11am"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 12pmm"
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 2pm"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Football session for 60 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 3pm"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 4pm "
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 5pm"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}

class SwimmingSessions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Text('Swimming Sessions'),
                ),
                body:SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:10.0, left: 40.0, right: 10.0),
                            child: new Image.asset(
                              'assets/images/swimming.jpg',
                              height: 150.0,
                              width: 250.0,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:10.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Swimming session for 20 mintues",
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Where: Lee Westwood Sports Centre,Nottingham Trent University,Clifton Campus.\n(As only Swimming Indoor available)"
                                  "\n\nWhen: Everyday At 8am"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 9am"
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 10am"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Swimming session for 30 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 11am"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 12pmm"
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 2pm"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Swimming session for 60 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 3pm"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 4pm "
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 5pm"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}

class BasketballSessions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Text('Basketball Sessions'),
                ),
                body:SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:10.0, left: 30.0, right: 10.0),
                            child: new Image.asset(
                              'assets/images/basketball.jpg',
                              height: 150.0,
                              width: 250.0,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:10.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Basketball session for 20 mintues",
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Where: Lee Westwood Sports Centre,Nottingham Trent University,Clifton Campus.\n(As only Basketball indoor available)"
                                  "\n\nWhen: Everyday At 8am"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 9am"
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 10am"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Basketball session for 30 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 11am"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 12pmm"
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 2pm"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "Basketball session for 60 mintues", textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 3pm"
                                  "\nGender: Female and Male", textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 4pm "
                                  "\nGender: Female",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0, left: 40.0, right: 10.0),
                            child: new Text(
                              "\nWhen: Everyday At 5pm"
                                  "\nGender: Male",textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 13.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}





class DayChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text(' 30 Day Challenge'),
                ),
                body: Padding(
                    padding: EdgeInsets.only(top:10.0, left: 0.0),
                    child: new Image.asset(
                      'assets/images/daych.png',
                      height: 1080.0,
                      width: 500.0,
                      alignment: Alignment.center,
                    ),
                  ),
            ),
        )
    );
  }
}

class StrengthTraining extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
              ),
              body: Container(
                child: StrengthTrainingVideo(),
              ),
            )
        )
    );
  }
}
class StrengthTrainingVideo extends StatefulWidget {
  @override
  StrengthTrainingVideoState createState() => StrengthTrainingVideoState();
}
class StrengthTrainingVideoState extends State<StrengthTrainingVideo> {
  VideoPlayerController playerController;

  void initState() {
    super.initState();
    playerController = VideoPlayerController.asset(
        "assets/videos/Strength.mp4")
        ..initialize().then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("Strength Training",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 10.0, right: 10.0),
                child: playerController.value.initialized?
                AspectRatio(
                    aspectRatio: playerController.value.aspectRatio,
                      child: (VideoPlayer(playerController)),
                      ):Container(),
                    ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("17 Min Strength Training Workout for Beginners - Beginner Workout Routine at Home for Women & Men.\n"
                  "\nMore video available at thier Youtube Channel: Hasfit\n\n\n\n"
                    "\n\n Copy right to HasFit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ]
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: () {
              setState(() {
                playerController.value.isPlaying
                    ? playerController.pause()
                    : playerController.play();
              });
            },
            child: Icon(
              playerController.value.isPlaying? Icons.pause: Icons.play_arrow,
            )
        )
    );
  }
}


class MusclesBuilding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
              ),
              body: Container(
                child: MusclesBuildingVideo(),
            ),
        )
    )
    );
  }
}
class MusclesBuildingVideo extends StatefulWidget {
  @override
  MusclesBuildingVideoState createState() => MusclesBuildingVideoState();
}
class MusclesBuildingVideoState extends State<MusclesBuildingVideo> {
  VideoPlayerController playerController;

  void initState() {
    super.initState();
    playerController = VideoPlayerController.asset(
        "assets/videos/muscle.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("Muscles Building",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 10.0, right: 10.0),
                child: playerController.value.initialized?
                AspectRatio(
                  aspectRatio: playerController.value.aspectRatio,
                  child: (VideoPlayer(playerController)),
                ):Container(),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("40 Min Arm Workout for Women & Men at Home with Weights for Mass - Muscle Building Bicep and Tricep\n"
                    "\nMore video available at thier Youtube Channel: Hasfit\n\n\n\n"
                    "\n\n Copy right to HasFit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ]
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: () {
              setState(() {
                playerController.value.isPlaying
                    ? playerController.pause()
                    : playerController.play();
              });
            },
            child: Icon(
              playerController.value.isPlaying? Icons.pause: Icons.play_arrow,
            )
        )
    );
  }
}


class FatBurn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text('Fat Burn'),
              ),
              body: Container(
                child: FatBurnVideo(),
              ),
            )
        )
    );
  }
}
class FatBurnVideo extends StatefulWidget {
  @override
  FatBurnVideoState createState() => FatBurnVideoState();
}
class FatBurnVideoState extends State<FatBurnVideo> {
  VideoPlayerController playerController;

  void initState() {
    super.initState();
    playerController = VideoPlayerController.asset(
        "assets/videos/fatburn.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("Fat Burn",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 10.0, right: 10.0),
                child: playerController.value.initialized?
                AspectRatio(
                  aspectRatio: playerController.value.aspectRatio,
                  child: (VideoPlayer(playerController)),
                ):Container(),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("30 Minute Fat Burning Cardio Workout at Home - 30 Min HIIT Cardio Workouts without Equipment\n"
                    "\nMore video available at thier Youtube Channel: Hasfit\n\n\n\n"
                    "\n\n Copy right to HasFit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ]
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: () {
              setState(() {
                playerController.value.isPlaying
                    ? playerController.pause()
                    : playerController.play();
              });
            },
            child: Icon(
              playerController.value.isPlaying? Icons.pause: Icons.play_arrow,
            )
        )
    );
  }
}



class Flexibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
              ),
              body: Container(
                child: FlexibilityVideo(),
              ),
            )
        )
    );
  }
}
class FlexibilityVideo extends StatefulWidget {
  @override
  FlexibilityVideoState createState() => FlexibilityVideoState();
}
class FlexibilityVideoState extends State<FlexibilityVideo> {
  VideoPlayerController playerController;

  void initState() {
    super.initState();
    playerController = VideoPlayerController.asset(
        "assets/videos/fixibility.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("Flexibility and Mobility",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 10.0, right: 10.0),
                child: playerController.value.initialized?
                AspectRatio(
                  aspectRatio: playerController.value.aspectRatio,
                  child: (VideoPlayer(playerController)),
                ):Container(),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("30 Minute Full Body Stretch Routine - Total Body Stretching Exercises & Flexibility Stretches\n"
                    "\nMore video available at thier Youtube Channel: Hasfit\n\n\n\n"
                    "\n\n Copy right to HasFit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ]
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: () {
              setState(() {
                playerController.value.isPlaying
                    ? playerController.pause()
                    : playerController.play();
              });
            },
            child: Icon(
              playerController.value.isPlaying? Icons.pause: Icons.play_arrow,
            )
        )
    );
  }
}



class WarmCoolDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
              ),
              body: Container(
                child: WarmCoolDownVideo(),
              ),
            )
        )
    );
  }
}
class WarmCoolDownVideo extends StatefulWidget {
  @override
  WarmCoolDownVideoState createState() => WarmCoolDownVideoState();
}
class WarmCoolDownVideoState extends State<WarmCoolDownVideo> {
  VideoPlayerController playerController;

  void initState() {
    super.initState();
    playerController = VideoPlayerController.asset(
        "assets/videos/warmup.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("Warm up and Cool Down",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 10.0, right: 10.0),
                child: playerController.value.initialized?
                AspectRatio(
                  aspectRatio: playerController.value.aspectRatio,
                  child: (VideoPlayer(playerController)),
                ):Container(),
              ),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 20.0, right: 10.0),
                child: Text("17 Min Cardio Warmup + Dynamic Stretching for Running Lifting HIIT: Warm Up Exercises Before Workout\n"
                    "\nMore video available at thier Youtube Channel: Hasfit\n\n\n\n"
                    "\n\n Copy right to HasFit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ]
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: () {
              setState(() {
                playerController.value.isPlaying
                    ? playerController.pause()
                    : playerController.play();
              });
            },
            child: Icon(
              playerController.value.isPlaying? Icons.pause: Icons.play_arrow,
            )
        )
    );
  }
}

