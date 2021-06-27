import 'package:flutter/material.dart';
import 'package:student_room/home_page.dart';
import 'package:student_room/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 80,
              width: 80,
            ),
            SizedBox(
              height: 56,
            ),
            Image.asset(
              'assets/images/ilustration.png',
              width: 267,
              height: 200,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Up Your Skills',
              style: titleTextStyle.copyWith(
                fontSize: 28,
                color: blackColor,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'We provide content that helps\neveryone to learn anything',
              style: subTitleTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: greyColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 56,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * defaultMargin),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                color: blueColorButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: whiteColorButton,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
