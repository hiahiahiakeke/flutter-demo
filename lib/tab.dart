import 'package:flutter/material.dart';
import 'package:new_demo_flutter/drawerList.dart';
import 'package:new_demo_flutter/hello.dart';
import 'package:new_demo_flutter/pageDemo.dart';
import 'package:new_demo_flutter/textField.dart';

import 'moreWidget.dart';

class TabDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabchange'),
          elevation: 0.0,
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.send),
            Icon(Icons.verified_user),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 20.0,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 16.0,
            ),
            indicatorColor: Colors.red,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                text: 'js',
              ),
              Tab(
                text: 'java',
              ),
              Tab(
                text: 'dart',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PageDemo(),
            MoreWidget(),
            InputWidget(),
          ],
        ),
        drawer: DrawerList(),
      ),
    );
  }
}
