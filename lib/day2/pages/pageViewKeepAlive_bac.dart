/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 14:16:25
 * @LastEditTime: 2022-12-07 14:16:25
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewKeepAlive copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 14:03:05
 * @LastEditTime: 2022-12-07 14:15:25
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewKeepAlive.dart
 */
import 'package:flutter/material.dart';

class PageViewKeepAlive extends StatefulWidget {
  const PageViewKeepAlive({super.key});

  @override
  State<PageViewKeepAlive> createState() => _PageViewKeepAliveState();
}

class _PageViewKeepAliveState extends State<PageViewKeepAlive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewKeepAlive'),
      ),
      body: PageView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return MyContainer(num: index+1);
          })),
    );
  }
}

class MyContainer extends StatefulWidget {
  int num;
  MyContainer({super.key, required this.num});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '第${widget.num}屏',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; //返回true表示缓存页面
}
