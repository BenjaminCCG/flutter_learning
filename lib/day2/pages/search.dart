/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 09:46:11
 * @LastEditTime: 2022-12-09 09:17:51
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\day2\pages\search.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('搜索页'),
      ),
      body: const Center(
        child: Text('search'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          // Navigator.pushReplacementNamed(context, '/form');
          Get.back();
        },
      ),
    );
  }
}
