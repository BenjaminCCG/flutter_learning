/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 09:49:32
 * @LastEditTime: 2022-12-07 10:18:46
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageView.dart
 */

import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyPageView')),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Text(
              '第一屏',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Center(
            child: Text(
              '第二屏',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Center(
            child: Text(
              '第三屏',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Center(
            child: Text(
              '第四屏',
              style: Theme.of(context).textTheme.headline1,
            ),
          )
        ],
      ),
    );
  }
}
