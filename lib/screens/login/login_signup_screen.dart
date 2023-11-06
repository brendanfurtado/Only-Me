import 'package:flutter/material.dart';

class LoginSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Only Me',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'A private social network for you and your closest friends.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              child: Text('Log In'),
              onPressed: () {
                // TODO: Implement log in functionality.
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Sign Up'),
              onPressed: () {
                // TODO: Implement sign up functionality.
              },
            ),
          ],
        ),
      ),
    );
  }
}
