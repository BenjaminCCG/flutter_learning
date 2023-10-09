/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 13:21:09
 * @LastEditTime: 2022-12-05 09:59:48
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs\category.dart
 */
import 'package:flutter/material.dart';
import '../search.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return const SearchPage();
                })));
              },
              child: Text('跳转搜索')),
                        ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/search');
              },
              child: Text('跳转搜索'))
        ],
      ),
    );
  }
}
