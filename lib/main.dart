import 'package:flutter/material.dart';
import 'module/post.dart';
import 'dart:async';

import 'login/login.dart';

void main() {
  runApp(App());
}

// class App extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'app_example',
//       home: LoginPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

enum Option { A, B, C }

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello'),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _openAlertDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('alertDialog'),
            content: Text('are you sure about this?'),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('cancel'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('ok'),
              ),
            ],
          );
        });
  }

  String _choice = 'Nothing';
  Future _openSimpleDialog() async {
    final option = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('simpledialog'),
          children: [
            SimpleDialogOption(
              child: Text('a'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('b'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
          ],
        );
      },
    );
    switch (option) {
      case Option.A:
        setState(() {
          _choice = 'a';
        });
        break;
      case Option.B:
        setState(() {
          _choice = 'b';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ninghao'),
        elevation: 30.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
      // body: ListView.builder(
      //   itemBuilder: _listItemBuilder,
      //   itemCount: posts.length,
      // ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('your choice is: $_choice'),
            RaisedButton(
              child: Text('open alertDialog'),
              onPressed: _openAlertDialog,
            ),
          ],
        ),
      ),
    );
  }
}

// Widget _listItemBuilder(BuildContext context, int index) {
//   return Container(
//       color: Colors.white,
//       margin: EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           SizedBox(height: 16.0),
//           Text(
//             posts[index].title,
//             style: Theme.of(context).textTheme.title,
//           ),
//           Text(
//             posts[index].author,
//             style: Theme.of(context).textTheme.subhead,
//           ),
//           SizedBox(height: 16.0),
//         ],
//       ));
// }
