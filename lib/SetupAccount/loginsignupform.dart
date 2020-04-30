import 'package:flutter/material.dart';
import 'package:ntutepstofithealths_app/SetupAccount/authenticationadmin.dart';
import 'package:flutter/services.dart';

class LoginSignUpPage extends StatefulWidget {
  LoginSignUpPage({this.auth, this.loginCallback});

  final BaseAuth auth;
  final VoidCallback loginCallback;

  @override
  State<StatefulWidget> createState() => new _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  final _formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  String _errorMessage;

  bool _isLoginForm;

  // Check if form is valid before perform login or signup
  bool checkAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  // login or signUp form
  void validateAndSubmit() async {
    setState(() {
      _errorMessage = "";
    });

    if (checkAndSave()) {
      String userId = "";
      try {
        if (_isLoginForm) {
          userId = await widget.auth.signIn(_email, _password);
          print('Signed in: $userId');
        } else {
          userId = await widget.auth.signUp(_email, _password);
          print('Signed up user: $userId');
        }

        if (userId.length > 0 && userId != null && _isLoginForm) {
          widget.loginCallback();
        }
      } catch (e) {
        print('Error: $e');
        setState(() {
          _errorMessage = e.message;
          _formKey.currentState.reset();
        });
      }
    }
  }

  @override
  void initState() {
    _errorMessage = "";
    _isLoginForm = true;
    super.initState();
  }

  void resetForm() {
    _formKey.currentState.reset();
    _errorMessage = "";
  }

  void toggleFormMode() {
    resetForm();
    setState(() {
      _isLoginForm = !_isLoginForm;
    });
  }

  // to display boxes email and password with buttons
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            _showForm(), // calling the widget to display
          ],
        ));
  }
  Widget _showForm() {
    return new Container(
      padding: EdgeInsets.all(20.0),
      child: new Form(
        key: _formKey,
        child: new ListView(
          shrinkWrap: true,
          // these to call the function within showing the form
          children: <Widget>[
            showLogo(),
            showAppName(),
            showEmailInput(),
            showPasswordInput(),
            showErrorMessage(),
            showAgree(),
            showPrimaryButton(),
            showSecondaryButton(),
            showPassword(),
          ],
        ),
      ),
    );
  }

  // to show user error to solve
  Widget showErrorMessage() {
    if (_errorMessage.length > 0 && _errorMessage != null) {
      return new Text(
        _errorMessage,
        style: TextStyle(
            fontSize: 12.0,
            color: Colors.red,
            height: 2.0,
            fontWeight: FontWeight.w400),
      );
    } else {
      return new Container(
        height: 0.0,
      );
    }
  }
  // to show user what email they entering
  Widget showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Email',
            icon: new Icon(
              Icons.mail,
              color: Colors.black,
            )),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }

  // to show password but only one index as user types
  Widget showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Password',
            icon: new Icon(
              Icons.lock,
              color: Colors.black,
            )),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onSaved: (value) => _password = value.trim(),
      ),
    );
  }

  // to buttons when user change there requires
  Widget showSecondaryButton() {
    return new FlatButton(
      child: new Text(
          _isLoginForm
              ? 'Create an account'
              : 'You Have an account - Sign in',
          style: new TextStyle(fontSize: 18.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic)
      ),
      onPressed: toggleFormMode
    );
  }

  Widget showPrimaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: SizedBox(
          height: 40.0,
          child: new RaisedButton(
              elevation: 5.0,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Colors.pinkAccent,
              child: new Text(_isLoginForm ? 'Login' : 'Create account',
                  style: new TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: validateAndSubmit
          ),
        )
    );
  }

    // to show app name
  Widget showAppName() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 70.0,
      child: Text('Ntu Stepz To Fit Health', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30.0)),
    );
  }


  Widget showLogo() {
    return new Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
          child: Image.asset('assets/images/try.png', width: 150, height: 150,),
      ),
    );
  }


  Widget showPassword() {
    return PasswordForget();
  }

  Widget showAgree(){
    bool _agreedToTOS = true;
    void _setAgreedToTOS(bool newValue) {
    setState(() {
    _agreedToTOS = newValue;
    });}
    return Padding(
      padding: const EdgeInsets.only(top:10),
      child: Row(
        children: <Widget>[
          Checkbox(
            value: _agreedToTOS,
            onChanged: _setAgreedToTOS,
          ),
          GestureDetector(
            child: const Text(
              'I agree to the Terms of Services and Privacy Policy',
              style: TextStyle(fontSize: 11.5,decoration: TextDecoration.underline, color: Colors.blue),),
              onTap: (){
                navigateToPolicy(context);
              }
            ),
        ]
      ),
    );
  }
}


Future navigateToPolicy(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Policy()));
}

class Policy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Service and Priavacy Policy'),
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
                    padding: const EdgeInsets.fromLTRB(150.0, 0.0, 0.0, 0.0),
                    child: new Text(
                      "*Scroll to read*",
                      style: new TextStyle(
                          fontSize: 10.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
                    child: new Text(
                      "Privacy Policy for users on NTU Stepz to Fit Health", textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 15.0, 0.0),
                    child: new Text(
                      "The NTU Stepz to Fit Health App runs a on platforms which hosts an application for smartphones, and mobile apps where users get access to content and functionalities.",
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
                      child: Text("The following privacy policy applies to collecting, processing and usage of personal data in the context of the registration and use of the provided web-apps and mobile apps. "
                          "\n\n 1- Service Provider and Responsibility for Data As defined by General Data Protection Regulation Act NTU Stepz to Fit Health is an application provider health advice to the one who in need t, in this case students at Nottingham Trent University. If you have questions or"
                          " suggestions concerning our policies on data protection, please refer to the following contact information: "
                          "\nEmail: NTUStepztoFitHealth@gmail.com"
                          "\n2- Collecting, processing, and use of your personal data We collect, your personal data only if it is allowed or appointed by law, And the only things we collect is your email and password used to register with and any event or Diet food as they connecting to the database of the NTU Stepz to Fit Health App."
                          "\n2.2- Additional collecting and processing of personal data and transmission to third-parties"
                          "Under no cases, we do not transfer personal data to a third party."
                          "\n3- Your right to information, correction, deletion and disclosure of your data"
                          "In accordance with legal provisions, you have the right to correct, delete, and block your personal data. Additionally, you have the right to obtain the following information from us at any time: (as appropriate) which of your personal data we store, what our purpose for storing this data is, as well as requesting the origin and recipient, or recipient category of this data."
                          "Such inquiries can be directed to the following contact information:"
                          "\n Email: NTUStepztoFitHealth@gmail.com",textAlign: TextAlign.center,
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


class PasswordForget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new GestureDetector(
          onTap: () {
          },
        child:new Container(
          child: Text("Forget Password""/Send Email:Noofat2010@gmail.com with your email that used to Sign up/2 mintues waiting", style: TextStyle(decoration: TextDecoration.underline, color: Colors.black, fontWeight: FontWeight.w700), textAlign: TextAlign.center),
          padding: EdgeInsets.only(top:10.0),
        )
    )
    );
  }
}


