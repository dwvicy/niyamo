import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:niyamo/constants/AppTheme.dart';
import 'package:niyamo/screens/hacks.dart';
import 'package:niyamo/screens/homey.dart';
import 'package:niyamo/screens/my-routine.dart';
import 'package:niyamo/screens/rant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(
            LineIcons.home,
            color: Colors.black54,
          ),
          label: 'home'),
      BottomNavigationBarItem(
        icon: Icon(
          LineIcons.sun_o,
          color: Colors.black54,
        ),
        label: 'routine',
      ),
      BottomNavigationBarItem(
          icon: Icon(
            LineIcons.hourglass_end,
            color: Colors.black54,
          ),
          label: 'rant'),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[Homey(), Hacks(), Rant()],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.offWhite,
      appBar: AppBar(
        leading: Container(),
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'niyamo',
              style: TextStyle(
                  color: AppTheme.pinky,
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            )),
        backgroundColor: AppTheme.offWhite,
        elevation: 0,
      ),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyan,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 35),
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        unselectedItemColor: Colors.black54,
        currentIndex: bottomSelectedIndex,
        backgroundColor: AppTheme.offWhite,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
