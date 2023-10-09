/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 10:29:38
 * @LastEditTime: 2022-12-07 10:42:32
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewFullPage.dart
 */

import 'package:flutter/material.dart';

class PageViewFullPage extends StatefulWidget {
  const PageViewFullPage({super.key});

  @override
  State<PageViewFullPage> createState() => _PageViewFullPageState();
}

class _PageViewFullPageState extends State<PageViewFullPage> {
  List<Widget> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (var i = 0; i < 10; i++) {
      list.add(Center(
        child: Text(
          '第${i + 1}屏',
          style: TextStyle(fontSize: 60),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewFullPage'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: list,
        onPageChanged: (value) {
          if (value + 2 == list.length) {
            setState(() {
              for (var i = 0; i < 10; i++) {
                list.add(Center(
                  child: Text(
                    '第${i + 1}屏',
                    style: TextStyle(fontSize: 60),
                  ),
                ));
              }
            });
          }
        },
      ),
    );
  }
}
