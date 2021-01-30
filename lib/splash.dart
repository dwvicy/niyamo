import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/dot_animation_enum.dart';

import 'constants/AppTheme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Self-care 'o' clock",
        styleTitle: TextStyle(
          color: AppTheme.ellowPinky,
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
        pathImage: "assets/photos/5 2.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Be mindful of your lifestyle",
        styleTitle: TextStyle(
          color: AppTheme.ellowPinky,
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
        pathImage: "assets/photos/6 2.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Rant it all out",
        styleTitle: TextStyle(
          color: AppTheme.ellowPinky,
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
        pathImage: "assets/photos/7 2.png",
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    Navigator.of(context).pushNamed('/');
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.white,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.white,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.white,
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
            child: ListView(
              children: <Widget>[
                GestureDetector(
                    child: Image.asset(
                  currentSlide.pathImage,
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.contain,
                )),
                Container(
                  child: Text(
                    currentSlide.title,
                    style: currentSlide.styleTitle,
                    textAlign: TextAlign.center,
                  ),
                  margin: EdgeInsets.only(top: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: AppTheme.ellowPinky,
      highlightColorSkipBtn: Colors.black,

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: AppTheme.ellowPinky,
      highlightColorDoneBtn: Colors.black,

      // Dot indicator
      colorDot: AppTheme.ellowPinky,
      sizeDot: 13.0,
      typeDotAnimation: dotSliderAnimation.DOT_MOVEMENT,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
