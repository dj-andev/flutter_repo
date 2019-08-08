import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/splash/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return GmailSignIn();
  }
}

class GmailSignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GmailState();
  }
}

class GmailState extends State<GmailSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
            builder: (context) => Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.network(
                        "https://i.pinimg.com/474x/64/a3/58/64a3588e06ba8caaac7f4f672d4656c9--page-borders-fish-design.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Container(
                            width: 250.0,
                            child: Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Color(0xffffffff),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.google,
                                        color: Color(0xffCE107C),
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Sign in with Google',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    siginWithGmail(context);
                                  }),
                            )),
                        Container(
                            width: 250.0,
                            child: Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Color(0xffffffff),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.facebook,
                                        color: Colors.lightBlue,
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Sign in with Facebook',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {}),
                            )),
                        Container(
                            width: 250.0,
                            child: Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Color(0xffffffff),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.solidEnvelope,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Sign in with Email',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {}),
                            ))
                      ],
                    ),
                  ],
                )));
  }

  Future<FirebaseUser> siginWithGmail(BuildContext context) async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    AuthCredential authCredential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    AuthResult authResult =
        await firebaseAuth.signInWithCredential(authCredential);
    FirebaseUser firebaseUser = authResult.user;
    UserDetails userDetails = UserDetails(firebaseUser.displayName,
        firebaseUser.email, firebaseUser.photoUrl, "Gmail");
    saveUserDetails(userDetails);
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => HomePage(userDetails)));
//    Navigator.of(context).pop();
    return firebaseUser;
  }

  Future<bool> saveUserDetails(UserDetails userDetails) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', userDetails.userName);
    await prefs.setString('eMailAdress', userDetails.eMailAdress);
    await prefs.setString('photoUrl', userDetails.photoUrl);
    await prefs.setString('loginMode', userDetails.loginMode);
    return prefs.commit();
  }
}
