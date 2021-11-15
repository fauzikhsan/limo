import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:zetproject/logindll/choosetologin.dart';

import 'buttonWidget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Lorem Ipsum Dolmen',
              body: 'Lorem Ipsum Dolmen Sit Amet adalah sebuah prasa',
              image: buildImage('images/discover1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Lorem Ipsum Dolmen',
              body: 'Lorem Ipsum Dolmen Sit Amet adalah sebuah prasa',
              image: buildImage(
                'images/discover1.png',
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Lorem Ipsum Dolmen',
              body: 'Lorem Ipsum Dolmen Sit Amet adalah sebuah prasa',
              image: buildImage(
                'images/discover1.png',
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Limo',
              body: 'Start your journey',
              footer: ButtonWidget(
                text: 'Start Project',
                onClicked: () => goToHome(context),
              ),
              image: buildImage(
                'images/danadarurat.png',
              ),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text(
            'Go',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
            ),
          ),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text(
            'Skip',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
            ),
          ),
          onSkip: () => goToHome(context),
          next: Text(
            'Next',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
            ),
          ),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Colors.grey[100],
          skipFlex: 0,
          nextFlex: 0,
        ),
      );

  void goToHome(context) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChoosetoLogin(),
      ));

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Colors.grey[400]!,
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeColor: Color(
          0xff058c42,
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Color(0xffffffff),
      );
}
