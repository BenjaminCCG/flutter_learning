/*
 * @Author: ChangCheng
 * @Date: 2022-12-05 11:11:18
 * @LastEditTime: 2022-12-09 09:41:26
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \startup_namer\lib\day2\routers\routers.dart
 */
// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../middleware/shopMiddleware.dart';
import '../pages/tabs.dart';
import '../pages/search.dart';
import '../pages/news.dart';
import '../pages/form.dart';
import '../pages/shop.dart';
class AppPage {
  static final routes = [
       GetPage(name: "/", page: () => const Tabs()),
        GetPage(name: "/news", page: () => NewsPage()),
        GetPage(name: "/search", page: () => const SearchPage()),
        GetPage(name: "/form", page: () => FormPage()),
        GetPage(name: "/shop", page: () => ShopPage(),middlewares: [ShopMiddleWare()]),
  ];
}

// import '../pages/pageView.dart';
// import '../pages/pageViewBuilder.dart';
// import '../pages/pageViewFullPage.dart';
// import '../pages/pageViewSwiper.dart';
// import '../pages/pageViewKeepAlive.dart';
// //1.定义路由
// Map routes = {
//   "/": (context) => const Tabs(),
//   "/news": (context) => NewsPage(),
//   "/search": (context) => const SearchPage(),
//   '/form': (context, {arguments}) => FormPage(arguments: arguments),
//   '/shop': (context, {arguments}) => ShopPage(arguments: arguments),
//   '/pageview': (context) => MyPageView() ,
//   '/pageviewbuilder': (context) => PageViewBuilderPage() ,
//   '/pageViewFullPage':(context) => PageViewFullPage() ,
//   '/pageViewSwiperPage':(context) => PageViewSwiperPage(),
//   '/pageViewKeepAlive':(context) => PageViewKeepAlive()
// };

//  //2.配置 onGenerateRoute  固定写法  相当于中间件 可以做权限判断
// var onGenerateRoute = (RouteSettings settings) {
//   print(settings);
//   final String? name = settings.name;
//   final Function? pageContentBuilder = routes[name];
//   if (pageContentBuilder != null) {
//     if (settings.arguments != null) {
//       final Route route = MaterialPageRoute(
//         builder: (context) =>
//             pageContentBuilder(context, arguments: settings.arguments),
//       );
//       return route;
//     } else {
//       final Route route = MaterialPageRoute(
//         builder: (context) => pageContentBuilder(context),
//       );
//       return route;
//     }
//   }
//   return null;
// };
