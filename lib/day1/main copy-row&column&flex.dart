/*
 * @Author: ChangCheng
 * @Date: 2022-11-30 14:56:14
 * @LastEditTime: 2022-11-30 14:56:14
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-11-30 14:55:24
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

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: IconContainer(Icons.home),
            ),
          // Expanded(
          //   flex:2,
          //   child:  IconContainer(Icons.search, color: Colors.yellow)
          // )
         IconContainer(Icons.search, color: Colors.yellow)
        ],
      );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {Key? key, this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      height: 100,
      width: 100,
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
