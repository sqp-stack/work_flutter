/*
在 Flutter 中，Flex 是一个非常重要的布局组件，它用来创建可以在主轴（横轴或纵轴）上弹性调整子组件的布局。Flex 的“弹性”指的是如何让子组件根据可用空间分配和拉伸。
这个弹性布局的功能类似于 CSS 中的 flexbox，主要是通过 flex 属性控制子组件在主轴方向上所占据的比例。

Flex 的基本用法
Flex 是一个可以包含多个子组件的容器，它有两个主要的方向：

主轴方向（Main Axis）：这通常是 Axis.horizontal（横向）或 Axis.vertical（纵向）。
交叉轴方向（Cross Axis）：垂直于主轴的方向。
弹性布局的意思
“弹性”指的是，子组件在主轴上根据父容器的总空间和各自的 flex 属性进行比例分配。例如，当父容器有足够的空间时，子组件可以扩展或收缩，以填满这些空间。flex 属性是控制子组件如何在主轴上拉伸或收缩的关键。

Flex 的基本参数
Flex 组件本身并不直接控制弹性布局，它更多的是作为容器提供布局的方向。而关键的控制弹性布局的组件是 Expanded 和 Flexible，它们都需要被放在 Flex 的子组件中。

flex: 控制子组件在主轴上的占比。flex 值越大，子组件占用的空间就越大。
mainAxisAlignment: 控制子组件在主轴上的对齐方式。
crossAxisAlignment: 控制子组件在交叉轴上的对齐方式。


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
    return Center(
      child: Container(
        child: Flex(
          direction: Axis.horizontal, // 设置主zou为水平方向
          children: [
            // 这个container组件是定的，不是弹性的
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            // 以下部分的组件是弹性的，可以按照主轴的方向进行分配比例然后拉伸
            Expanded(
              // flex设置为1，意识就是说让这个container组件在剩下的父组件空间里面占一份
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              // flex设置为2，意识就是说让这个container组件在剩下的父组件空间里面占2份
              flex: 2,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            )
          ],
        ),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
