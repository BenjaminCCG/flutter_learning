/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 17:29:10
 * @LastEditTime: 2022-12-02 17:29:10
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 16:17:37
 * @LastEditTime: 2022-12-02 16:46:04
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-12-01 17:21:58
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main base.dart
 */
import 'dart:io';

import 'package:flutter/material.dart';

const image =
    'https://gimg3.baidu.com/search/src=http%3A%2F%2Fpics2.baidu.com%2Ffeed%2F6a63f6246b600c331563763cdf280404d8f9a198.jpeg%40f_auto%3Ftoken%3D7f45a73d98441782ba6f4fbf02be6eb5&refer=http%3A%2F%2Fwww.baidu.com&app=2021&size=f360,240&n=0&g=0n&q=75&fmt=auto?sec=1669827600&t=a30e2c348d11e6143b6f5373488c0843';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// 有状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数：当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('左侧按钮图标');
          },
        ),
        title: const Text('flutter App'),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('右侧按钮图标');
            },
          ),
        ],
        bottom: TabBar(
        controller: _tabController,
        // isScrollable: true,
        // indicatorColor: Colors.red,
        // indicatorWeight: 2,
        // indicatorPadding: EdgeInsets.all(5),
        // indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          color: Colors.blue
        ),
        tabs: const [
          Tab(
            child: Text('关注'),
          ),
          Tab(
            child: Text('热门'),
          ),
          Tab(
            child: Text('视频'),
          ),
        ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text('关注列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('热门列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('视频列表'),
              )
            ],
          )
        ],
      ),
    );
  }
}
