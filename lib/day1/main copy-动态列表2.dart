/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 10:50:32
 * @LastEditTime: 2022-11-30 10:50:32
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 10:49:24
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
import 'package:flutter/material.dart';
import './res/listData.dart';

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

  // List<Widget> _initListData() {
  //   List<Widget> tempList = [];
  //   for (var i = 0; i < list.length; i++) {
  //     tempList.add(ListTile(
  //       title: Text(list[i]["title"]),
  //       subtitle: Text(list[i]["auth"]),
  //     ));
  //   }
  //   return tempList;
  // }

    List<Widget> _initListData() {
      var tempList = list.map((e){
        return ListTile(
          title: Text(e['title']),
          subtitle: Text(e['auth']),
        );
      });
      return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}
