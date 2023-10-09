/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 13:20:59
 * @LastEditTime: 2022-12-09 09:33:40
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\day2\pages\tabs\home.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/search');
                Get.toNamed('/search');
              },
              child: Text('跳转搜索')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: Text('跳转表单')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/news');
              },
              child: Text('跳转新闻')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/form',
                // arguments: {"title": "命名路由传值", "id": 20});
                Get.toNamed('/form',arguments: {
                  "id":123
                });
              },
              child: Text('命名路由传值')),
                        SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/shop',
                //     arguments: {"title": "商城传值", "aaid": 20});
                Get.toNamed('/shop',arguments: {
                  "title":"嘿嘿和"
                });
              },
              child: Text('跳转商城')),
                        ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageview');
              },
              child: Text('跳转pageview'))
        ],
      ),
    );
  }
}
