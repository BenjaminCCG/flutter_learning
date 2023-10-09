/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 15:56:57
 * @LastEditTime: 2022-12-07 16:38:07
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 16:17:25
 * @LastEditTime: 2022-12-07 16:31:00
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
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      body: Center(
        child: Box(key: _globalKey, color: Colors.red)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // print(_globalKey.currentState);
          //获取子currentState widget的属性
          var boxState = _globalKey.currentState as _BoxState;
          // boxState._say();
          setState(() {
            boxState._count++;
          });


          //获取子widget
          var _boxWidget = _globalKey.currentWidget as Box;
          print(_boxWidget.color);

          //获取渲染属性
          // var _boxContext = _globalKey.currentContext
          var renderBox = _globalKey.currentContext!.findRenderObject() as RenderBox;
          // print(renderBox.size);
         
        },
      ),
    );
  }
}

class Box extends StatefulWidget {
  Color color;
  Box({super.key, required this.color});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;
  void _say(){
    print(111);
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color)),
        child: Text(
          '$_count',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
