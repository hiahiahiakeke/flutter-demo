import 'package:flutter/material.dart';

class RouteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('luyou'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_left),
        onPressed: () {
          // tiaozhuan
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ButtonDemo(),
          //   ),
          // );
          Navigator.pushNamed(context, '/button');
        },
      ),
    );
  }
}
