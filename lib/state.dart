/*
*
* 有状态组件
*
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



class HomeContext extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeContextState();
  }
}




class _HomeContextState extends State<HomeContext>{
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            Text("点击次数+${this.count}"),
          ElevatedButton(
            child: 
            Text("增加"),
            onPressed: (){
              setState(() {
                this.count++;
              });
            },
          )
        ],
      ),
    );
  }
}












