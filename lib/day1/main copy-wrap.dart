/*
 * @Author: ChangCheng
 * @Date: 2022-12-01 15:51:18
 * @LastEditTime: 2022-12-01 15:51:18
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-12-01 15:47:15
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
import 'dart:io';

import 'package:flutter/material.dart';
import './res/listData.dart';

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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: [
          Button('第1集', onPressed: () {}),
          Button('第2集', onPressed: () {}),
          Button('第3集', onPressed: () {}),
          Button('第4集', onPressed: () {}),
          Button('第6集(完结)', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Button(this.text, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 202, 200, 200)),
          foregroundColor: MaterialStateProperty.all(Colors.black45)),
      child: Text(text),
    );
  }
}
