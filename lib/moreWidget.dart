import 'package:flutter/material.dart';

class MoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // AspectRatio(
        //   aspectRatio: 16 / 9,
        //   child: Container(
        //     color: Colors.lightBlue,
        //     child: Text('guding'),
        //   ),
        // ),
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image.asset(
            'images/pic.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Text('sizebox'),
        ),
        Stack(
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200.0,
            ),
            Positioned(
              right: 10.0,
              top: 100.0,
              child: Icon(Icons.ac_unit, color: Colors.white),
            ),
            Positioned(
              right: 30.0,
              top: 50.0,
              child: Icon(Icons.ac_unit, color: Colors.white),
            ),
            Positioned(
              left: 50.0,
              top: 10.0,
              child: Icon(Icons.ac_unit, color: Colors.white),
            ),
            Positioned(
              left: 90.0,
              top: 20.0,
              child: Icon(Icons.ac_unit, color: Colors.white),
            ),
          ],
        ),
        ListTile(
          leading: Icon(Icons.supervised_user_circle),
          title: Text('person center'),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text('entry person list'),
          onTap: () {
            print('you click');
          },
        ),
        Divider(
          height: 20.0,
        ),
        ListTile(
          leading: Icon(Icons.supervised_user_circle),
          title: Text('person center'),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text('entry person list'),
          onTap: () {
            print('you click');
          },
        ),
        Chip(
          label: Text('html'),
          backgroundColor: Colors.red,
          avatar: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text('E'),
          ),
          deleteIcon: Icon(Icons.settings),
          onDeleted: () {
            print('delete');
          },
        )
      ],
    );
  }
}
