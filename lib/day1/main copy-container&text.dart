/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 16:06:50
 * @LastEditTime: 2022-11-29 16:06:50
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("你好flutter")),
          body: Column(
            children: const [MyApp(), MyButton(), MyText()],
          ))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
      width: 200,
      height: 200,
      // transform: Matrix4.translationValues(-40, 20, 0),//位移
      // transform: Matrix4.rotationZ(0.2),//旋转
      transform: Matrix4.skewY(.2), //倾斜
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10)],
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.yellow],
          )),
      child: const Text(
        '你好flutter',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      ),
    ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment:Alignment.center,
      padding: const EdgeInsets.all(10),
      width: 200,
      height: 40,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: const Text(
        '登录',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text(
        '我是Text组件我是Text组件我是Text组件我是Text组件我是Text组件我是Text组件',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis, 
        maxLines: 1,
        style: TextStyle(
          fontSize: 18,
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 2
        ),
      ),
    );
  }
}
