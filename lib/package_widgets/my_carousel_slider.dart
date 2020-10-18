import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarouselSlider extends StatefulWidget {
  @override
  _MyCarouselSliderState createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  var logoItems = List.generate(6, (index) => FlutterLogo(size: 64));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: logoItems.length,
          itemBuilder: (context, index) {
            var item = logoItems[index];
            return item;
          },
          options: CarouselOptions(
            height: 80,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
          ),
        ),
      ),
    );
  }
}
