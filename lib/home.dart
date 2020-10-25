import 'package:flutter/material.dart';
import 'package:new_demo_flutter/drawerList.dart';
import 'package:new_demo_flutter/hello.dart';
import 'package:new_demo_flutter/widgetDemo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutterssdfsdfsss'),
        elevation: 0.0,
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.send),
          Icon(Icons.verified_user),
        ],
      ),
      body: WidgetDemoRow(),
      drawer: DrawerList(),
    );
  }
}
