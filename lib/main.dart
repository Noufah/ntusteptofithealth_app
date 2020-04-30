import 'package:flutter/material.dart';
import 'package:ntutepstofithealths_app/SetupAccount/authenticationadmin.dart';
import 'package:ntutepstofithealths_app/SetupAccount/root.dart';
import 'package:provider/provider.dart';
import 'package:ntutepstofithealths_app/MainPages/DietRecorder.dart';



void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(
      builder: (context) => FoodNotifier(), create: (BuildContext context) {},
    ),
  ],
  child: MyApp(),

));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Ntu Steps To Fit Health",
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
        primaryColor: Colors.black
        ),
        home: new RootPage(auth: new AuthAdmin()));
  }
}
// this page is to run the app to user and show the ways they can signin