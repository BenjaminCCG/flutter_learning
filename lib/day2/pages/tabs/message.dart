/*
 * @Author: ChangCheng
 * @Date: 2022-12-02 14:01:44
 * @LastEditTime: 2022-12-02 14:04:37
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\pages\tabs\message.dart
 */
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return const Text('消息');
  }
}