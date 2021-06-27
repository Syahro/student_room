import 'package:flutter/material.dart';
import 'package:student_room/theme.dart';
import 'package:student_room/widget/course_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/video.png',
                ),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Brand Marketing Design',
                      style: titleTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'How to build strong company with passion',
                      style: subTitleTextStyle,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '# Preparing',
                      style: titleTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CourseTile(
                      imageUrl: 'assets/images/icon1.png',
                      title: 'Ideation',
                      value: 0.7,
                      isLocked: false,
                      isPlay: true,
                      isPause: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/images/icon2.png',
                      title: 'Validate Idea',
                      value: 0.2,
                      isLocked: false,
                      isPlay: false,
                      isPause: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/images/icon3.png',
                      title: 'Strong Promotion',
                      value: 0.0,
                      isLocked: true,
                      isPlay: false,
                      isPause: false,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '# Targeting Customer',
                      style: titleTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CourseTile(
                      imageUrl: 'assets/images/icon4.png',
                      title: 'App Survey',
                      value: 0.8,
                      isLocked: false,
                      isPlay: false,
                      isPause: true,
                    ),
                    CourseTile(
                      imageUrl: 'assets/images/icon5.png',
                      title: 'Get Funding',
                      value: 0.1,
                      isLocked: false,
                      isPlay: false,
                      isPause: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/images/icon6.png',
                      title: 'Ship to Investor',
                      value: 0.0,
                      isLocked: true,
                      isPlay: false,
                      isPause: false,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      child: RaisedButton(
                        onPressed: () {},
                        color: blueColorButton,
                        child: Text(
                          'Finish and Take Quiz',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: whiteColorButton,
                            fontSize: 22,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: whiteColorButton,
                        child: Text(
                          'Skip to Home',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: darkGreyColorButton,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
