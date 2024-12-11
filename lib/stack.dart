/*
* 定位，将这个子元素定位到具体的位置
* */
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home 代表首页的意思
      home: Scaffold(
        // 自动提供的导航栏部分
        appBar: AppBar(
          title: Text("flex弹性布局演示"),
        ),
        // 创建一个部件，以后的每一次都是这样写
        body: HomeContext(),
      ),
    );
  }
}

class HomeContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 400,
        color: Colors.deepPurpleAccent,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              left: 200,
              top: 100,
            ),
            Container(
              color: Colors.yellow,
              width: 80,
              height: 80,
            ),
            Container(
              color: Colors.blue,
              width: 60,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
