/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 13:20:00
 * @LastEditTime: 2022-12-07 10:09:10
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs.dart
 */
import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/user.dart';
import './tabs/message.dart';

const image =
    'https://gimg3.baidu.com/search/src=http%3A%2F%2Fpics2.baidu.com%2Ffeed%2F6a63f6246b600c331563763cdf280404d8f9a198.jpeg%40f_auto%3Ftoken%3D7f45a73d98441782ba6f4fbf02be6eb5&refer=http%3A%2F%2Fwww.baidu.com&app=2021&size=f360,240&n=0&g=0n&q=75&fmt=auto?sec=1669827600&t=a30e2c348d11e6143b6f5373488c0843';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _index = 0;
  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(), 
    Message(),
    Setting(),
    User()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter App'),backgroundColor: Colors.red,),
      body: _pages[_index],
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children:  [
                Expanded(
                  // flex: 1,
                  child: UserAccountsDrawerHeader(
                    accountName:const Text('张三'),
                    accountEmail:const Text('email'),
                    otherAccountsPictures: [
                      Image.network(image),
                      Image.network(image),
                      Image.network(image),
                    ],
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)
                    ),
                    currentAccountPicture:const CircleAvatar(
                      backgroundImage: NetworkImage(image),
                    ),
                  ),
                )
              ],
            ),
            const ListTile(
              leading: Icon(Icons.people),
              title: Text('列表'),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DrawerHeader(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.cover)),
                      child: Column(
                        children: const [
                          ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.people),
                            ),
                            title: Text(
                              '张三',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: '用户')
        ],
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(top: 4),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _index = 2;
            });
          },
          backgroundColor: _index == 2 ? Colors.red : Colors.blueAccent,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
