/*
 * @Author: ChangCheng
 * @Date: 2022-12-01 09:08:26
 * @LastEditTime: 2022-12-01 09:08:27
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-12-01 09:04:33
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
      home: Scaffold(appBar: AppBar(title: const Text("Flutter app"),),
      body: const MyHomePage(),),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  
  //显示一个容器宽度是屏幕的宽度，高度是宽度的一半
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
  
}