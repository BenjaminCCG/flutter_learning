/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 10:57:51
 * @LastEditTime: 2022-12-07 13:47:34
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewSwiper.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 10:43:35
 * @LastEditTime: 2022-12-07 10:56:17
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewSwiper.dart
 */
import 'dart:async';

import 'package:flutter/material.dart';
import '../widget/Image.dart';
import '../widget/swiper.dart';
class PageViewSwiperPage extends StatefulWidget {
  const PageViewSwiperPage({super.key});

  @override
  State<PageViewSwiperPage> createState() => _PageViewSwiperPageState();
}

class _PageViewSwiperPageState extends State<PageViewSwiperPage> {
  
  List<Widget> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      ImagePage(),
      ImagePage(),
      ImagePage(),
    ];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewSwiperPage'),
      ),
      body: Swiper(list: list,),
    );
  }
}
