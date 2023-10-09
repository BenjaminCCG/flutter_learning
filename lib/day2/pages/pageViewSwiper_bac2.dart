/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 13:09:30
 * @LastEditTime: 2022-12-07 13:09:31
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewSwiper copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 10:57:51
 * @LastEditTime: 2022-12-07 11:16:11
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewSwiper.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 10:43:35
 * @LastEditTime: 2022-12-07 10:56:17
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\pageViewSwiper.dart
 */
import 'package:flutter/material.dart';
import '../widget/Image.dart';

class PageViewSwiperPage extends StatefulWidget {
  const PageViewSwiperPage({super.key});

  @override
  State<PageViewSwiperPage> createState() => _PageViewSwiperPageState();
}

class _PageViewSwiperPageState extends State<PageViewSwiperPage> {
  List<Widget> list = [];
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      ImagePage(),
      ImagePage(),
      ImagePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewSwiperPage'),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: 1000,
              itemBuilder: ((context, index) {
                return list[index % list.length];
              }),
              onPageChanged: ((index) {
                setState(() {
                  _currentIndex = index % list.length;
                });
              }),
            ),
          ),
          Positioned(
              left: 0,
              bottom: 5,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(list.length, (index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            _currentIndex == index ? Colors.blue : Colors.grey),
                  );
                }).toList(),
              ))
        ],
      ),
    );
  }
}
