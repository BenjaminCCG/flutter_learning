/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 14:19:56
 * @LastEditTime: 2022-12-09 09:37:20
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\main.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 16:17:25
 * @LastEditTime: 2022-12-07 14:10:01
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
// import './day2/routers/routers.dart';
import 'package:get/get.dart';
import './day2/routers/routers.dart';

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
      // home: Tabs(),
      // routes: routes,
      initialRoute: '/',
      //2.配置 onGenerateRoute  固定写法
      // onGenerateRoute: onGenerateRoute,
      getPages: AppPage.routes,
      defaultTransition: Transition.rightToLeft,
    );
  }
}
