/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 13:21:15
 * @LastEditTime: 2022-12-07 09:15:53
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs\setting.dart
 */

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../widget/myDialog.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  void _myDialog(){
    // print('_myDialog');
    showDialog(
      barrierDismissible: false,
      context: context, builder: (context){
      return  MyDialog(title: 'hello world',content: Text('随便搞搞1'),onTap: () {
        Navigator.pop(context);
      },);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                var result = await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('提示信息'),
                        content: const Text('您确定要删除吗'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                print('确定');
                                Navigator.pop(context, 'Ok');
                              },
                              child: Text('确定')),
                          TextButton(
                              onPressed: () {
                                print('取消');
                                Navigator.pop(context, 'Cancel');
                              },
                              child: Text('取消')),
                        ],
                      );
                    });
                print(result);
              },
              child: Text('alertDialog')),
          ElevatedButton(
              onPressed: () async {
                var result = await showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: ((context) {
                      return SimpleDialog(
                        title: Text('请选择语言'),
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              print('韩语');
                              Navigator.pop(context, '韩语');
                            },
                            child: Text('韩语'),
                          ),
                          Divider(),
                          SimpleDialogOption(
                            onPressed: () {
                              print('英语');
                              Navigator.pop(context, '英语');
                            },
                            child: Text('英语'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              print('日语');
                              Navigator.pop(context, '日语');
                            },
                            child: Text('日语'),
                          )
                        ],
                      );
                    }));
                print(result);
              },
              child: Text('simpleDialog')),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('分享'),
                              onTap: () {
                                print('分享');
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              title: Text('收藏'),
                              onTap: () {
                                print('收藏');
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              title: Text('取消'),
                              onTap: () {
                                print('取消');
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text('showModalBottomSheet')),
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "提示信息111",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color.fromRGBO(100, 100, 100, 1),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: Text('toast')),
          ElevatedButton(onPressed: _myDialog, child: Text('自定义dialog'))
        ],
      ),
    );
  }
}
