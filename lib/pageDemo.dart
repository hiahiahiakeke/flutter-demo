import 'package:flutter/material.dart';

class PageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset('images/pic.jpg'),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'LUTINGLUTINGLUTINGLUTINGLUTINGLUTINGLUTINGLUTINGLUTING',
                      style: TextStyle(fontWeight: FontWeight.w600),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '1992-12-18',
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('31'),
              //title
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // Column(
          //   children: [
          //     Icon(Icons.phone, color: Colors.blue),
          //     SizedBox(height: 7.0),
          //     Text('PHONE', style: TextStyle(color: Colors.blue)),
          //   ],
          // ),
          // Column(
          //   children: [
          //     Icon(Icons.router, color: Colors.blue),
          //     SizedBox(height: 7.0),
          //     Text('ROUTER', style: TextStyle(color: Colors.blue)),
          //   ],
          // ),
          PubIcon(Icons.phone, 'PHONE'),
          PubIcon(Icons.router, 'ROUTER'),
          PubIcon(Icons.share, 'SHARE'),
          PubIcon(Icons.data_usage, 'dsdfasdf'),
        ]),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
              'Laboris id aute quis voluptate exercitation sunt non veniam. Voluptate exercitation qui in aute adipisicing. Dolor dolore qui voluptate consequat culpa nulla duis. Aute laboris commodo velit adipisicing do nisi voluptate.'),
        )
      ],
    );
  }
}

class PubIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  PubIcon(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(height: 7.0),
        Text(text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
