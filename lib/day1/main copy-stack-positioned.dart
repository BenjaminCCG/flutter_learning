/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 16:59:08
 * @LastEditTime: 2022-11-30 16:59:08
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 16:57:17
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter app"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 50),
          children: const [
            ListTile(title: Text('我是列表0')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
            ListTile(title: Text('我是列表1')),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,                                                               
            width: size.width,//配置子元素的宽度和高度
            height: 44,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    color: Colors.red,
                    child: const Text(
                      '二级导航',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
