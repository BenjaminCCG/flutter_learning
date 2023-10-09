/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 10:01:08
 * @LastEditTime: 2022-12-06 08:59:33
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\news.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 09:55:19
 * @LastEditTime: 2022-12-05 09:56:35
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\form.dart
 */
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  String title;
   NewsPage({super.key,this.title = "新闻页"});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
      child: Text('我是新闻页'),
    ),
    );
  }
}