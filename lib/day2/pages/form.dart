/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 09:55:19
 * @LastEditTime: 2022-12-09 09:18:58
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\day2\pages\form.dart
 */
import 'package:flutter/material.dart';
import './tabs.dart';
import 'package:get/get.dart';
//其他页面跳转到formpage进行命名路由传值
class FormPage extends StatefulWidget {
  Map? arguments;
  FormPage({super.key, this.arguments});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页'),
      ),
      body: Center(
        child: Text('我是表单页'),
      ),
            floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          // Navigator.pushAndRemoveUntil(context, 
          //   MaterialPageRoute(builder: ((context) {
          //     return const Tabs();
          //   }))
          // , (route) => false);
          Get.offAll(const Tabs());
        },
      ),
    );
  }
}
