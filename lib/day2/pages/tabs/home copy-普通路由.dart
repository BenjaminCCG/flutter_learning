/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 10:17:43
 * @LastEditTime: 2022-12-05 10:17:43
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs\home copy 2.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 13:20:59
 * @LastEditTime: 2022-12-05 10:05:56
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs\home.dart
 */
import 'package:flutter/material.dart';
import '../search.dart';
import '../form.dart';
import '../news.dart';
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const SearchPage();
                })));
              },
              child: Text('跳转搜索')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const FormPage();
                })));
              },
              child: Text('跳转表单')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return  NewsPage(title: '我是标题',);
                })));
              },
              child: Text('跳转新闻'))
        ],
      ),
    );
  }
}
