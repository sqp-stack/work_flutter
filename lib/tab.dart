/*
*
* 设置这个底部导航栏，使用的就是有状态的组件
* */

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tabs() //首页
        );
  }
}

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabsState();
  }
}

class _TabsState extends State {
  List pages = [
    HomePage(),
    CatePage(),
    AboutPage(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("底部demo")),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          //底部导航栏
          currentIndex: this._currentIndex, //设置当前的索引值
          onTap: (int index) {
            // 设置这个点击事件,当点击下面的items的时候，都会触发这个点击事件
            // 并且将这个index传入进来
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "分类",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "关于",
            )
          ]),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("这是一个home页面"),
    );
  }
}

class CatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("这是一个Cate页面"),
    );
  }
}
/////
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("这是一个关于页面"),
    );
  }
}
