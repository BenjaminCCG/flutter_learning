/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 09:43:32
 * @LastEditTime: 2022-11-30 09:43:32
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 09:43:20
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
import 'package:flutter/material.dart';
import './Font.dart';

void main() {
  runApp(const MyApp());
}

const image = 'https://gimg3.baidu.com/search/src=http%3A%2F%2Fpics2.baidu.com%2Ffeed%2F6a63f6246b600c331563763cdf280404d8f9a198.jpeg%40f_auto%3Ftoken%3D7f45a73d98441782ba6f4fbf02be6eb5&refer=http%3A%2F%2Fwww.baidu.com&app=2021&size=f360,240&n=0&g=0n&q=75&fmt=auto?sec=1669827600&t=a30e2c348d11e6143b6f5373488c0843';

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
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ListTile(
          leading: Image.network(image),
          title: const Text("国家打扫打扫国家打扫打扫国家打扫打扫国家打扫打扫国家打扫打扫"),
          // subtitle: const Text('征信查询自产自销'),
        ),
        Divider(),
        ListTile(
          title: const Text("国家打扫打扫国家打扫打扫国家打扫打扫国家打扫打扫国家打扫打扫"),
          trailing: Image.network(image),
          // subtitle: const Text('征信查询自产自销'),
        ),
      ],
    );
  }
}
