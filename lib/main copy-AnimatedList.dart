/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 17:26:20
 * @LastEditTime: 2022-12-07 17:26:20
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 16:17:25
 * @LastEditTime: 2022-12-07 17:02:41
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
  List<String> list = ['第一条', '第二条'];
  bool flag = true;
  final _globalKey = GlobalKey<AnimatedListState>();

  Widget _buildItem(index) {
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          _deleteItem(index);
        },
      ),
    );
  }

  void _deleteItem(index) {
    if (flag) {
      flag = false;
      _globalKey.currentState!.removeItem(index, (context, animation) {
        var removeItem = _buildItem(index);
        list.removeAt(index);
        // return FadeTransition(
        //   opacity: animation,
        //   child: removeItem,
        // );
        return ScaleTransition(
          scale: animation,
          child: removeItem,
        );
      });
      Timer.periodic(Duration(milliseconds: 500), (timer) {
        flag = true;
        timer.cancel();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      body: AnimatedList(
        key: _globalKey,
        initialItemCount: list.length,
        itemBuilder: (context, index, animation) {
          // return FadeTransition(
          //   opacity: animation,
          //   child: _buildItem(index),
          // );
          return ScaleTransition(scale: animation, child: _buildItem(index));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          list.add('我是新增的数据');
          _globalKey.currentState!.insertItem(list.length - 1);
        },
      ),
    );
  }
}
