import 'package:flutter/material.dart';

class LoginStartScreen extends StatelessWidget {
  const LoginStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          // Ensuring the content is not behind status bar or notch
          child: Center(
            // Centering the content vertically and horizontally
            child: SingleChildScrollView(
              // Making the content scrollable if overflow
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                children: <Widget>[
                  SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.05), // Providing some top space
                  getImageAsset(
                      './assets/images/narcissism2.png'), // Icon placeholder on top
                  const SizedBox(
                      height:
                          30), // Adding space between the icon and the title
                  _titleDescription(),
                  const SizedBox(
                      height:
                          20), // Adding space between the title and the description
                  _startingWelcomeDescription(),
                  const SizedBox(
                      height: 40), // Adding space before the Get Started button
                  _getStartedButton(context), // Get Started button
                ],
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(218, 195, 123, 1));
  }

  //Public methods
  Widget getImageAsset(String path) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      width: 150,
      child: Image.asset(path),
    );
  }

  Widget _startingWelcomeDescription() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0), // Add horizontal padding
      child: Column(
        children: <Widget>[
          Text(
            'Welcome, Solopreneur! ',
            style: TextStyle(
              color: Color.fromRGBO(67, 101, 142, 1),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Aligning the text to center
          ),
          SizedBox(height: 12), // Adding space between the texts
          Text(
            'This is YOUR app to Sell Yourself and Your Services.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(67, 101, 142, 1),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _titleDescription() {
    return const Padding(
      // Adding padding to center the title horizontally
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        'Only Me 😘',
        textAlign: TextAlign.center, // Aligning the text to center
        style: TextStyle(
          // color: Color.fromRGBO(220, 193, 101, 1),
          color: Color.fromRGBO(92, 85, 82, 1),
          fontSize: 56,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _getStartedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _navigateToCreateAccount(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(159, 107, 157, 1),
        padding: const EdgeInsets.symmetric(
            horizontal: 48, vertical: 12), // Button size
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Rounded corners
        ),
      ),
      child: const Text('Get Started'),
    );
  }

  void _navigateToCreateAccount(BuildContext context) {
    // TODO: Add navigation logic to redirect to the create account screen
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccountScreen()));
  }
}
