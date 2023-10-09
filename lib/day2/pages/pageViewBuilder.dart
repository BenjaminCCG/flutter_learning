/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 10:19:58
 * @LastEditTime: 2022-12-07 10:29:03
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewBuilder.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 09:49:32
 * @LastEditTime: 2022-12-07 10:18:46
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageView.dart
 */

import 'package:flutter/material.dart';

class PageViewBuilderPage extends StatefulWidget {
  const PageViewBuilderPage({super.key});

  @override
  State<PageViewBuilderPage> createState() => _PageViewBuilderPageState();
}

class _PageViewBuilderPageState extends State<PageViewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pageViewBuilder'),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                '第${index+1}屏',
                style: Theme.of(context).textTheme.headline1,
              ),
            );
          }),
    );
  }
}
