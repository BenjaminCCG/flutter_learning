/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 11:06:29
 * @LastEditTime: 2022-12-09 09:34:10
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\day2\pages\shop.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShopPage extends StatefulWidget {
  ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(Get.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商城')),
      body: Center(
        child: Text('商城页面'),
      ),
    );
  }
}
