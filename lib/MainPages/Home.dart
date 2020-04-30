import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
//Access app
import 'package:ntutepstofithealths_app/SetupAccount/authenticationadmin.dart';
//firebase
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
//main pages
import 'package:ntutepstofithealths_app/MainPages/Search.dart';
import 'package:ntutepstofithealths_app/MainPages/Steps.dart';
import 'package:ntutepstofithealths_app/MainPages/Calender.dart';
import 'package:ntutepstofithealths_app/MainPages/DietRecorder.dart';
//drawer
import 'package:ntutepstofithealths_app/Drawer/Profile.dart';
import 'package:ntutepstofithealths_app/Drawer/Share.dart';
import 'package:ntutepstofithealths_app/Drawer/Chatroom.dart';
import 'package:ntutepstofithealths_app/Drawer/Notification.dart';
import 'package:ntutepstofithealths_app/Drawer/About.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final FirebaseDatabase database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  FirebaseUser user;

  initUser() async {
    user = await _firebaseAuth .currentUser();
    setState(() {});
  }


  signOut() async {
    try {
      await widget.auth.signOut();
      widget.logoutCallback();
    } catch (e) {
      print(e);
    }
  }

  @override

  void initState() {
    super.initState();
    initUser();
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: new Text('Ntu Stepz To Fit Health', style: TextStyle(fontSize: 16.0,),),
        actions: <Widget>[
          new FlatButton(
              child: new Text('Logout',
                  style: new TextStyle(fontSize: 13.0, color: Colors.pinkAccent,decoration: TextDecoration.underline)),
              onPressed: signOut)
        ],
      ),
        drawer: new Drawer(
            child: new ListView(
                padding: EdgeInsets.only(top:50.0),
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    accountName: Text(""),
                    accountEmail: Text("Email: ${user?.email}"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigateToProfile(context);
                    },
                    child: ListTile(
                      title: Text('My Profile'),
                      leading: Icon(Icons.account_circle, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigateToNotifications(context);
                    },
                    child: ListTile(
                      title: Text('Notifications'),
                      leading: Icon(Icons.notifications_active, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigateToChatRoom(context);
                    },
                    child:ListTile(
                      title: Text('Chat Room '),
                      leading: Icon(Icons.message, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigateToShare(context);
                    },
                    child:ListTile(
                      title: Text('Share with Friends'),
                      leading: Icon(Icons.share, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigateToAbout(context);
                    },
                    child:ListTile(
                      title: Text('About'),
                      leading: Icon(Icons.help, color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                      contentPadding:EdgeInsets.only(left:230.0, top: 0.0, bottom: 0.0),
                      leading: Image.asset('assets/images/try.png', width: 60.0,alignment: Alignment.bottomRight)
                  ),
                ]
            )
        ),
      body:Center(
        child: DefaultTabController(
        length: 3,
          child: Scaffold(
             appBar: TabBar(
               labelColor: Colors.black,
                indicatorColor: Colors.pinkAccent,
                tabs: [
                   Tab(icon: Icon(Icons.new_releases)),
                   Tab(icon: Icon(Icons.list)),
                   Tab(icon: Icon(Icons.mood)),
                ]
               ),
            body: TabBarView(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.all(7.0),
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child:Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 110.0),
                          ),
                          Text(
                            'NewsFeed',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:10.0, right: 3.0,bottom: 8.0),
                            child: Icon(Icons.new_releases,
                              color: Colors.pinkAccent,
                            ),
                          ),
                          Text(
                            'Welcome',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 30.0,
                          ),
                          child: Text('Thank you for getting on board :) \n'
                              '\nWe could not be more excited to have you with us to explore our basics activites and feature with bear in mind to let us know you are getting stuck.\n'
                              '\nWe would be happy to help you though ChatRoom in the Drewer or Email us at: Stepstofithealht@gmail.com \nexperience anytime.\n \n \n Admin: Nouf Alrajeh ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                      ),
                    ]
                  ),
                ),
                      //things to do
                      new Container(
                        margin: EdgeInsets.all(7.0),
                        padding: EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 110.0,top:10, bottom: 20),
                                  ),
                                  Text(
                                    'Things To Do',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:8.0, right: 2.0,),
                                    child: Icon(Icons.today,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  Text(
                                    'Running',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 0,
                                  ),
                                  child: Text('Running session for 30 mintues around Nottingham City.',textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 230.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToRunning(context);
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
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:8.0, right: 2.0,),
                                    child: Icon(Icons.today,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  Text(
                                    'Tennis',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight:FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 0,
                                  ),
                                  child: Text('Tennis session for 30 mintues on NTU Lee Westwood Sports Centre.',textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 230.0),
                                        child: RaisedButton(
                                          onPressed: () {
                                            navigateToTennis(context);
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
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:8.0, right: 2.0,),
                                    child: Icon(Icons.today,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  Text(
                                    'Workout',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight:FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 0,
                                  ),
                                  child: Text('Workout Full Body session for 30 mintues in NTU Student Gym.',textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 230.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        navigateToWorkout(context);
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
                new Container(
                          margin: EdgeInsets.all(7.0),
                          padding: EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 50.0),
                                    ),
                                    Text(
                                      'Meet up Post Feedback',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top:20.0, right: 2.0, bottom: 20.0),
                                      child: Icon(Icons.supervisor_account,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                    Text(
                                      'ThabetIbra@hotmail.com',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2.0,
                                      horizontal: 0,
                                    ),
                                    child: Text('I used meet up to meet students who are intersted to play Tennis and it was great.\n'
                                        '\nI get to know new students who are not even my age.\n \nBut, it was socially good and based on exprience I gained a lot and now I play one hour daily with them',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    )
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top:20.0, right: 2.0,bottom: 20.0),
                                      child: Icon(Icons.supervisor_account,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                    Text(
                                      'HaiaHind@gmail.com',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2.0,
                                      horizontal: 0,
                                    ),
                                    child: Text('I had the most exiciting running session with my girls who I met through the app\n '
                                        '\nIt is more enjoyable as I do not like to do it alone.\n '
                                        '\nBut now I have my girls each day for one hour which make me do it for fun and to stay fit',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                ),
                              ]
                          ),
                      ),
              ]
            ),
              bottomNavigationBar: ProductShopBottomNavigationBar(),
          )
        )
      )
    );
  }
}

class ProductShopBottomNavigationBar extends StatelessWidget {
  static const _iconSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                size: _iconSize,
                color: Colors.pink,
              ),
              onPressed: () {
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: _iconSize,
              ),
              onPressed: (){
                navigateToSearch(context);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.directions_run,
                size: _iconSize,
              ),
              onPressed: () {
                navigateToSteps(context);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.restaurant,
                size: _iconSize,
              ),
              onPressed: () {
                navigateToDietRecorder(context);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.calendar_today,
                size: _iconSize,
              ),
              onPressed: () {
                navigateToCalendar(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future navigateToHomePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
}

Future navigateToProfile(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
}

Future navigateToNotifications(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
}

Future navigateToChatRoom(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatRoom()));
}
Future navigateToShare(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Share()));
}

Future navigateToAbout(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
}


Future navigateToSearch(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
}

Future navigateToSteps(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Steps()));
}
Future navigateToDietRecorder(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DietRecorder()));
}

Future navigateToCalendar(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Calendar()));
}

Future navigateToRunning(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Running()));
}

Future navigateToTennis(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Tennis()));
}

Future navigateToWorkout(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Workout()));
}


class Running extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Running'),
          ),
          body: new Container(
            color: Colors.white,
            child: new Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top:10.0, left: 0.0),
                    child: new Image.asset(
                      'assets/images/running.jpg',
                      height: 150.0,
                      width: 300.0,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                    child: new Text(
                      "Running session for 30 mintues around Nottingham City", textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                    child: new Text(
                      "Where: Start Running from NTU Library Untill complete sesstion ", textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 13.0,
                          color: Colors.black87,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                    child: new Text(
                      "When: Everyday At 8am ", textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 13.0,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                    child: new Text(
                      "Gender: Female and Male ", textAlign: TextAlign.center,
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

class Tennis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Tennis'),
          ),
          body: new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:10.0, left: 0.0),
                  child: new Image.asset(
                    'assets/images/tennis.jpg',
                    height: 180.0,
                    width: 300.0,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "Tennis session for 30 mintues on NTU Lee Westwood Sports Centre.",textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "Where:\nLee Westwood Sports Centre,\nNottingham Trent University,\nClifton Campus.", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "When: Everyday At 12pm ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "Gender: Female and Male ", textAlign: TextAlign.center,
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

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Workout',),
          ),
          body: new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:10.0, left: 0.0),
                  child: new Image.asset(
                    'assets/images/workout.jpg',
                    height: 180.0,
                    width: 300.0,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "Workout Full Body session for 30 mintues in NTU Student Gym.",textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "Where: NTU Student Gym. ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "When: Everyday At 7am ", textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                  child: new Text(
                    "Gender: Female and Male ", textAlign: TextAlign.center,
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
