/*
 * @Author: ChangCheng
 * @Date: 2022-12-09 09:06:48
 * @LastEditTime: 2022-12-09 09:06:48
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 16:17:25
 * @LastEditTime: 2022-12-08 10:10:49
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return GetMaterialApp(
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
  void _alertDailog(context) async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('提示信息'),
            content: const Text('您确定要删除吗'),
            actions: [
              TextButton(
                  onPressed: () {
                    print('ok');
                    Navigator.pop(context, 'ok');
                  },
                  child: Text('确定')),
              TextButton(
                  onPressed: () {
                    print('cancel');
                    Navigator.pop(context, 'cancel');
                  },
                  child: Text('取消'))
            ],
          );
        });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                _alertDailog(context);
              },
              child: Text('alertDialog')),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: '提示信息',
                    middleText: '您确定要删除吗',
                    confirm: ElevatedButton(
                        onPressed: () {
                          print('确定');
                          // Navigator.pop(context, '确定');
                          Get.back();
                        },
                        child: Text('确定')),
                    cancel: ElevatedButton(
                        onPressed: () {
                          print('取消');
                          // Navigator.pop(context, '取消');
                          Get.back();
                        },
                        child: Text('取消')));
              },
              child: Text('Getx defaultDialog')),
          ElevatedButton(
              onPressed: () {
                Get.snackbar('提示', '尚未登录', colorText: Colors.red);
              },
              child: Text('snackbar')),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  height: 200,
                  color:Get.isDarkMode?Colors.black26: Colors.white,
                  child: Column(
                    children:  [
                      ListTile(
                        leading:const Icon(Icons.wb_sunny_outlined),
                         onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                        title:  Text(
                          '白天模式',
                          style: TextStyle(color: Get.isDarkMode? Colors.white:Colors.black87),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode_outlined),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                        title: Text(
                          '黑夜模式',
                          style: TextStyle(color: Get.isDarkMode? Colors.white:Colors.black87),
                        ),
                      )
                    ],
                  ),
                ));
              },
              child: Text('GETX bottomSheet切换主题')),
          ElevatedButton(onPressed: () {}, child: Text('a')),
        ],
      )),
    );
  }
}
