import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          title: Text("小尼诺"),
          centerTitle: true, // 是文字居中显示
        ),
        // 创建一个部件，以后的每一次都是这样写
        body: HomeContext(),
      ),
    );
  }
}
///

class HomeContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取屏幕宽高
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
        child: Column(
      //最外面组件
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.white, // 边框颜色
              width: 2.0, // 边框宽度
            ), // 设置圆角半径
          ),
          //顶部上面第一个
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          padding: EdgeInsets.symmetric(vertical: 7), // 只设置上下内边距,
          child: IntrinsicHeight(
            //其根据子组件的实际大小来决定高度
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 让子组件左对齐
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0), // 仅设置左侧外边距
                  child: Text(
                    "安全统筹",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 子组件之间的间隔相等，并且两端对齐
                  children: [
                    Container(
                        //我的订单小组件
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/我的-订单 (1).svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "我的订单",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/设备管理.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "设备管理",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/菜单栏-工单-工单管理.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "工单",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                    Container(
                        //我的订单小组件
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/售后服务.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "售后服务",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          // 中间身体第二个
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.white, // 边框颜色
              width: 2.0, // 边框宽度
            ), // 设置圆角半径
          ),
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          padding: EdgeInsets.symmetric(vertical: 7), // 只设置上下内边距,

          child: IntrinsicHeight(
            //其根据子组件的实际大小来决定高度
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 让子组件左对齐
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0), // 仅设置左侧外边距
                  child: Text(
                    "我的服务",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 子组件之间的间隔相等，并且两端对齐
                  children: [
                    Container(
                        //我的订单小组件
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/会员.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "       会员      ",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/信息.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "   信息    ",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/收 藏-产品详情.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "收藏产品",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                    Container(
                        //我的订单小组件
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/收藏方案.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "收藏方案",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //direction: Axis.horizontal, // 设置主zou为水平方向
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 42.0),
                        // 给这个子组件设置左外边距,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/我的钱包.svg',
                              width: 32,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "我的钱包",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w100),
                            )
                          ],
                        )),
                    SizedBox(width: 35),
                    Container(
                        child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/我的任务.svg',
                          width: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "我的任务",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 240,
          width: 370,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.white, // 边框颜色
              width: 2.0, // 边框宽度
            ), // 设置圆角半径
          ),
          child: ListView(
            //padding: EdgeInsets.only(bottom:  0.2),
            // 使用列表内容，列表是个集合
            children: [
              ListTile(
                dense: true,
                leading: Text("推荐服务",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              ListTile(
                dense: true,
                leading: Text("查知实验室",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                dense: true,
                leading: Text("合作专区",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                dense: true,
                leading: Text("帮助与反馈",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                dense: true,
                leading: Text("退出登录",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_right),
              ),
            ],
          ),
        ),
        Spacer(), // 创建弹性空间，将后面的组件推到底部
        Container(
          // 底部栏
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.white,  // 边框颜色
              width: 2.0,  // 边框宽度
            ),// 设置圆角半径
          ),

          width: 400,

          child: IntrinsicHeight(
            //其根据子组件的实际大小来决定高度
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start, // 让子组件左对齐
              children: [
                Container(
                    //我的订单小组件
                    child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/首页.svg',
                      width: 32,
                    ),
                    Text(
                      "首页",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                    )
                  ],
                )),
                Container(
                    //我的订单小组件
                    child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/我.svg',
                      width: 32,
                    ),
                    Text(
                      "我",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                    )
                  ],
                ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
