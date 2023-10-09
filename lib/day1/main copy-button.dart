/*
 * @Author: ChangCheng
 * @Date: 2022-12-01 13:06:12
 * @LastEditTime: 2022-12-01 13:06:12
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-11-29 17:17:29
 * @LastEditTime: 2022-12-01 11:20:58
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
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
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('普通按钮')),
            TextButton(onPressed: () {}, child: const Text('文本按钮')),
            OutlinedButton(onPressed: () {}, child: const Text('带边框按钮')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_down))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text('发送')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text('消息')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('增加'))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text('普通'),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('大按钮'),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(255, 255, 255, 0.5))),
                    child: const Text('宽按钮'),
                  ),
                ))
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text('圆角按钮'),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder(
                        side: BorderSide(color: Colors.yellow)))),
                child: const Text('圆角按钮'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            OutlinedButton(onPressed: (){},style: 
              ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(width: 1,color: Colors.red)
                )
              )
            , child: const Text('带边框按钮'),)
          ],
        )
      ],
    );
  }
}
