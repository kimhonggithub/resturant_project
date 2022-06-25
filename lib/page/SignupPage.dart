import 'package:flutter/material.dart';
import 'package:resturant_project/main.dart';
import 'package:resturant_project/main.dart';
import 'package:resturant_project/page/onboarding_page.dart';
import 'package:resturant_project/widget/button_widget.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sig up page',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            ButtonWidget(
                text: 'Go back', onClicked: () => goOnBoardingPage(context))
          ],
        )),
      );
  void goOnBoardingPage(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
}
