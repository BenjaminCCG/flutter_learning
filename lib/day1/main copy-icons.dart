/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 09:25:05
 * @LastEditTime: 2022-11-30 09:25:05
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 09:21:55
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
import 'package:flutter/material.dart';
import './Font.dart';
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
    return Column(
      children: const [
        SizedBox(height: 20),
        Icon(
          Icons.add_alert_outlined,
          size: 40,
          color: Colors.red,
        ),
        Icon(Icons.home),
        SizedBox(height: 20),
        Icon(
          Icons.bluetooth,
          color: Colors.blue,
        ),
        SizedBox(height: 20,),
        Icon(MyFont.weixin,color: Colors.green,size: 40,),
        SizedBox(height: 20,),
        Icon(MyFont.zhifubao,color: Colors.blue,size: 40,)
      ],
    );
  }
}
