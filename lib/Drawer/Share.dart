import 'package:flutter/material.dart';
import 'package:social_share_plugin/social_share_plugin.dart';


class Share extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Share With Friends '),
          ),
            body: new Container(
              color: Colors.white,
             child: new Column(
                 children: <Widget>[
                   new Padding(
                     padding: const EdgeInsets.fromLTRB(0.0, 13.0, 0.0, 0.0),
                     child: new Image.asset(
                       'assets/images/try.png',
                       height: 200.0,
                       width: 200.0,
                       alignment: Alignment.center,
                     ),
                   ),
                   new Padding(
                     padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 15.0),
                     child: new Text(
                       "Thanks for using NTU Steps To Fit Health App :) ""\n" "\n"
                           "Share the app with other to enjoy activites And to stay healthy", textAlign: TextAlign.center,
                       style: new TextStyle(
                           fontSize: 14.0,
                           color: Colors.black87,
                           fontWeight: FontWeight.w600),
                     ),
                   ),
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child:RaisedButton(
                            child: Text('Share to Facebook'),
                            shape: RoundedRectangleBorder(borderRadius:
                            BorderRadius.circular(50.0)),
                            color: Colors.pinkAccent,
                            onPressed: (){
                              SocialSharePlugin.shareToFeedFacebookLink(url:"https://play.google.com/store/apps/details?id=com.facebook.katana");
                            }
                        ),
                   ),
                   new Padding(
                     padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                     child: RaisedButton(
                         child: Text('Share to Twitter'),
                         shape: RoundedRectangleBorder(borderRadius:
                         BorderRadius.circular(30.0)),
                         onPressed: (){
                         SocialSharePlugin.shareToTwitterLink(url:"https://twitter.com/");
                         }
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

