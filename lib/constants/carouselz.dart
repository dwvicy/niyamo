import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> imgs = [
  Image.asset(
    'assets/photos/Group 5.png',
    height: 800,
  ),
  Image.asset('assets/photos/Group 7.png'),
  Image.asset('assets/photos/Group 8.png'),
  Image.asset('assets/photos/Group 10.png'),
];

class Caraou extends StatefulWidget {
  @override
  _CaraouState createState() => _CaraouState();
}

class _CaraouState extends State<Caraou> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: true,
      ),
      items: imgs,
    );
  }
}
