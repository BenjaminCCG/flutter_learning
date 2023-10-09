/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 13:41:21
 * @LastEditTime: 2022-12-07 14:00:05
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\widget\swiper.dart
 */
import 'dart:async';

import 'package:flutter/material.dart';

class Swiper extends StatefulWidget {
  double height;
  List<Widget> list;
  Swiper({super.key, required this.list, this.height = 200});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int currentIndex = 0;
  late PageController _pageController;
  late Timer timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
    print(1111);
    timer = Timer.periodic(Duration(seconds: 3), (t) {
      print(_pageController.hasClients);
      // if (_pageController.hasClients) {
        _pageController!.animateToPage((currentIndex + 1) % widget.list.length,
            duration: Duration(microseconds: 200), curve: Curves.linear);
      // }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.height,
          child: PageView.builder(
            itemCount: 1000,
            itemBuilder: ((context, index) {
              return widget.list[index % widget.list.length];
            }),
            onPageChanged: ((index) {
              setState(() {
                currentIndex = index % widget.list.length;
              });
            }),
          ),
        ),
        Positioned(
            left: 0,
            bottom: 5,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.list.length, (index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == index ? Colors.blue : Colors.grey),
                );
              }).toList(),
            ))
      ],
    );
  }
}
