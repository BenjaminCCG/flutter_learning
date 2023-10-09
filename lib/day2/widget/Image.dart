/*
 * @Author: ChangCheng
 * @Date: 2022-12-07 10:49:29
 * @LastEditTime: 2022-12-07 10:53:08
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\widget\Image.dart
 */
import 'package:flutter/material.dart';

const image =
    'https://gimg3.baidu.com/search/src=http%3A%2F%2Fpics2.baidu.com%2Ffeed%2F6a63f6246b600c331563763cdf280404d8f9a198.jpeg%40f_auto%3Ftoken%3D7f45a73d98441782ba6f4fbf02be6eb5&refer=http%3A%2F%2Fwww.baidu.com&app=2021&size=f360,240&n=0&g=0n&q=75&fmt=auto?sec=1669827600&t=a30e2c348d11e6143b6f5373488c0843';

class ImagePage extends StatelessWidget {
  final double width;
  final double height;
  final String src;
  const ImagePage(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      this.src = image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Image.network(
        src,
        fit: BoxFit.cover,
      ),
    );
  }
}
