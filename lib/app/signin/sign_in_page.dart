import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/signin/sign_in_button.dart';
import 'package:time_tracker_app/app/signin/social_signin_button.dart';
import 'package:time_tracker_app/services/Auth.dart';

class SignInPage extends StatelessWidget {
  final void Function(User?) onSignIn;

  final AuthBase auth;

  const SignInPage({Key? key, required this.onSignIn, required this.auth}) : super(key: key);

  Future<void> _signInAnonymously() async {
    try {
      final user = await auth.signInAnonymously();
      onSignIn(user);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 2.0,
        title: Text("Time Tracker"),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32.0),
          ),
          SizedBox(
            height: 48.0,
          ),
          SocialSigninButton(
            onPressed: () {},
            textColor: Colors.black87,
            color: Colors.white,
            text: "Sign in with Google",
            assetName: "images/google-logo.png",
          ),
          SizedBox(
            height: 8.0,
          ),
          SocialSigninButton(
            onPressed: () {},
            textColor: Colors.white,
            color: Color(0xFF334D92),
            text: "Sign in with Facebook",
            assetName: "images/facebook-logo.png",
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            onPressed: () {},
            textColor: Colors.white,
            color: Colors.teal,
            text: "Sign in with Email",
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "or",
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            onPressed: _signInAnonymously,
            textColor: Colors.black87,
            color: Colors.lime.shade300,
            text: "Go Anonymous",
          ),
        ],
      ),
    );
  }
}
