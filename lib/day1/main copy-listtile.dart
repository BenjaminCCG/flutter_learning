/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 09:36:49
 * @LastEditTime: 2022-11-30 09:36:49
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 09:36:37
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
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text('首页'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.assignment,color: Colors.red,),
          title: Text('全部订单'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.payment,color: Colors.green,),
          title: Text('代付款'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.save,color: Colors.yellow,),
          title: Text('我的收藏'),
          trailing: Icon(Icons.arrow_drop_down_outlined),
        ),
      ],
    );
  }
}
