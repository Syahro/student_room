import 'package:flutter/material.dart';
import 'package:student_room/theme.dart';

class CourseTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double value;
  final bool isLocked;
  final bool isPlay;
  final bool isPause;

  CourseTile(
      {this.imageUrl,
      this.title,
      this.value,
      this.isLocked,
      this.isPlay,
      this.isPause});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
      title: Text(
        title,
        style: titleTextStyle.copyWith(fontSize: 18),
      ),
      subtitle: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: LinearProgressIndicator(
          backgroundColor: Color(0XFFECEEF5),
          valueColor: AlwaysStoppedAnimation(
            Color(0XFFF35D22),
          ),
          value: value,
        ),
      ),
      trailing: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              isLocked
                  ? 'assets/images/btn_lock.png'
                  : isPlay
                      ? 'assets/images/btn_play.png'
                      : isPause
                          ? 'assets/images/btn_pause.png'
                          : 'assets/images/btn_play_disable.png',
            ),
          ),
        ),
      ),
    );
  }
}
