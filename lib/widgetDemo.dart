import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'asdfasdfasdfasddddddddddddddddddddddddddddddddddddddddddasdfasdfasdfasddddddddddddddddddddddddddddddddddddddddddasdfasdfasdfasdddddddddddddddddddddddddddddddddddddddddd',
      style: TextStyle(
          color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.w600),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class WidgetDemoRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '我的名字叫哈哈哈哈哈哈哈',
          style: TextStyle(color: Colors.blue, fontSize: 24.0),
          children: [
            TextSpan(
                text: '飞机',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic)),
            TextSpan(text: 'ss', style: TextStyle(color: Colors.red))
          ]),
    );
  }
}

class WidgetDemoContainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(10.0),
        // ),
        // border: Border(
        //   top: BorderSide(color: Colors.red, width: 3.0),
        //   left: BorderSide(color: Colors.green, width: 3.0),
        // ),
        border: Border.all(color: Colors.blue, width: 2.0),
      ),
      child: Text('Container'),
    );
  }
}

class WidgetDemoColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.settings, size: 40.0),
          Icon(Icons.cloud, size: 40.0),
          Icon(Icons.visibility, size: 40.0),
          Icon(Icons.archive, size: 40.0),
          Icon(Icons.gif, size: 40.0),
        ],
      ),
    );
  }
}

class WidgetDemoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.settings, size: 40.0),
          Icon(Icons.cloud, size: 40.0),
          Icon(Icons.visibility, size: 40.0),
          Icon(Icons.archive, size: 40.0),
          Icon(Icons.gif, size: 40.0),
        ],
      ),
    );
  }
}
