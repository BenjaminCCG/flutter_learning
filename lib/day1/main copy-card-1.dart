/*
 * @Author: ChangCheng
 * @Date: 2022-12-01 09:17:31
 * @LastEditTime: 2022-12-01 09:17:32
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-12-01 09:15:38
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

  //显示一个容器宽度是屏幕的宽度，高度是宽度的一半
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          color: Colors.yellow,
          shadowColor: Colors.red,
          margin: const EdgeInsets.all(10),
          child: Column(children: const [
            ListTile(
              title: Text(
                '张三',
                style: TextStyle(fontSize: 28),
              ),
              subtitle: Text('高级软件工程师'),
            ),
            Divider(),
            ListTile(
              title: Text('电话xxxxx'),
            ),
            ListTile(
              title: Text('地址：北京市海淀区'),
            )
          ]),
        ),
        const SizedBox(height: 20,),
        Card(
          child: Column(children: const [
            ListTile(
              title: Text(
                '李四',
                style: TextStyle(fontSize: 28),
              ),
              subtitle: Text('高级flutter工程师'),
            ),
            Divider(),
            ListTile(
              title: Text('电话xxxxx'),
            ),
            ListTile(
              title: Text('地址：北京市海淀区'),
            )
          ]),
        ),
      ],
    );
  }
}
