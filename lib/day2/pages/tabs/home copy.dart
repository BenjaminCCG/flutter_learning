/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 09:49:02
 * @LastEditTime: 2022-12-05 09:49:02
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs\home copy.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 13:20:59
 * @LastEditTime: 2022-12-05 09:42:31
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs\home.dart
 */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    //监听tabController的改变事件
    _tabController.addListener(() {
      // print(_tabController.index);
      if(_tabController.animation?.value == _tabController.index){
        print(_tabController.index);
      }
    }); 
  }

  //组件销毁的时候触发
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: SizedBox(
            height: 30,
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              labelStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              onTap: (value) {
                print(value);
              },
              tabs: const [
                Tab(
                  child: Text('关注'),
                ),
                Tab(
                  child: Text('热门'),
                ),
                Tab(
                  child: Text('关注1'),
                ),
                Tab(
                  child: Text('热门2'),
                ),
                Tab(
                  child: Text('关注3'),
                ),
                Tab(
                  child: Text('热门4'),
                ),
                Tab(
                  child: Text('关注5'),
                ),
                Tab(
                  child: Text('热门6'),
                )
              ],
            ),
          ),
          // centerTitle: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text('关注列表1'),
              ),
              ListTile(
                title: Text('关注列表2'),
              ),
              ListTile(
                title: Text('关注列表3'),
              ),
              ListTile(
                title: Text('关注列表4'),
              ),
              ListTile(
                title: Text('关注列表5'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表3'),
              ),
              ListTile(
                title: Text('关注列表4'),
              ),
              ListTile(
                title: Text('关注列表5'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              ),
              ListTile(
                title: Text('关注列表6'),
              )
            ],
          ),
          Text('我是热门'),
          Text('我是关注'),
          Text('我是热门'),
          Text('我是关注'),
          Text('我是热门'),
          Text('我是关注'),
          Text('我是热门')
        ],
      ),
    );
  }
}
