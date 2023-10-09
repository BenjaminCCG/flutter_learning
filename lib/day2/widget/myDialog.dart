/*
 * @Author: ChangCheng
 * @Date: 2022-12-06 16:56:13
 * @LastEditTime: 2022-12-06 18:01:31
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\widget\myDialog.dart
 */
import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title;
  Widget? content;
  Function()? onTap;
  MyDialog({super.key, this.title = '提示', this.content, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
        //可设置透明背景
        type: MaterialType.transparency,
        child: Center(//不包裹的话会全屏
          child: Container(
            width: 300,
            height: 300,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        // alignment: Alignment.centerLeft,
                        child: Text(
                          title,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Align(
                        // alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: onTap,
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  width: double.infinity,
                  child: content,
                  padding: EdgeInsets.all(10),
                )
              ],
            ),
          ),
        ));
  }
}
