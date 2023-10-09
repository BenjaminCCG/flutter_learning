/*
 * @Author: ChangCheng
 * @Date: 2022-12-08 09:36:02
 * @LastEditTime: 2022-12-08 09:36:03
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 16:17:25
 * @LastEditTime: 2022-12-08 09:32:07
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-12-02 13:24:11
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      body: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: flag?0.1:1,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
      ),
    );
  }
}
