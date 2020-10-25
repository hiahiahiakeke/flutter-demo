import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  Widget floatButton(context) {
    return FloatingActionButton(
      child: Icon(Icons.arrow_back),
      elevation: 0.0,
      backgroundColor: Colors.red,
      onPressed: () {
        print('float');
        Navigator.pop(context);
      },
    );
  }

  Widget floatBtn() {
    return FlatButton(
      child: Text('text button'),
      textColor: Colors.red,
      onPressed: () {
        print('click text button');
      },
    );
  }

  Widget flatBtnIcon() {
    return FlatButton.icon(
      icon: Icon(Icons.arrow_back),
      label: Text('tubiaowenzi'),
      textColor: Colors.blue,
      onPressed: () {
        print('click little text');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            floatBtn(),
            flatBtnIcon(),
            RaisedButton(
              onPressed: () {},
              elevation: 0.0,
              child: Text(
                'with xiaoguo',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              splashColor: Colors.red,
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_downward),
              label: Text('butttttton'),
              splashColor: Colors.blue,
              elevation: 0.0,
            ),
            OutlineButton(
              splashColor: Colors.red,
              onPressed: () {
                print('with bianfu');
              },
              child: Text('biankuangbutton'),
              textColor: Colors.blue,
              borderSide: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
            OutlineButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down),
              label: Text('buuuuuuuu'),
              splashColor: Colors.black,
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
