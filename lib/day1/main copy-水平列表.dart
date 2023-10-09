/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 10:18:55
 * @LastEditTime: 2022-11-30 10:18:55
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 10:17:47
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
import 'package:flutter/material.dart';
import './Font.dart';

void main() {
  runApp(const MyApp());
}

const image =
    'https://gimg3.baidu.com/search/src=http%3A%2F%2Fpics2.baidu.com%2Ffeed%2F6a63f6246b600c331563763cdf280404d8f9a198.jpeg%40f_auto%3Ftoken%3D7f45a73d98441782ba6f4fbf02be6eb5&refer=http%3A%2F%2Fwww.baidu.com&app=2021&size=f360,240&n=0&g=0n&q=75&fmt=auto?sec=1669827600&t=a30e2c348d11e6143b6f5373488c0843';

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
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(children: [Image.network(image),const Text('hello world')]),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.pink),
          )
        ],
      ),
    );
  }
}
