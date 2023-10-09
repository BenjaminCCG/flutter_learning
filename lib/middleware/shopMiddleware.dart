/*
 * @Author: ChangCheng
 * @Date: 2022-12-09 09:38:57
 * @LastEditTime: 2022-12-09 09:43:38
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\middleware\shopMiddleware.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopMiddleWare extends GetMiddleware {

    @override
  RouteSettings? redirect(String? route){
    print(route);
    // return null;//表示不做任何操作

    return const RouteSettings(name: '/search');//没有权限跳转到search页面
  }
}