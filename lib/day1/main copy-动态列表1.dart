/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 10:25:35
 * @LastEditTime: 2022-11-30 10:25:35
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 10:25:18
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

  //自定义方法
  List<Widget> _initListData(){
    List<Widget> list = [];
    for(var i = 0; i<20; i++){
      list.add(ListTile(title: Text('我是一个列表----$i'),));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }

}