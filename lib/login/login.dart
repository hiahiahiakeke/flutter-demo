import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:dio/dio.dart';

Dio dio = new Dio();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Formregist(),
      ),
    );
  }
}

class Formregist extends StatefulWidget {
  @override
  _FormregistState createState() => _FormregistState();
}

class _FormregistState extends State<Formregist> {
  String _verifyStr = '获取验证码';
  int _seconds = 0;
  Timer _timer;

  _getSmsCode() async {
    if (_seconds == 0) {
      print('start timeout');
      _startIimer();
      Response<String> response = await dio.get('https://www.baidu.com/');
      print(response.statusCode);

      // // request
      // // 1.引入io
      // // 2.建立client
      // var httpClient = new HttpClient();
      // // 3.构造uri
      // var uri = new Uri.http('example.com', '/path', {'name': 'lisa'});
      // //4.发起请求
      // var request = await httpClient.getUrl(uri);
      // //5.关闭请求等待响应
      // var response = await request.close();
    }
  }

  _startIimer() {
    _seconds = 60;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        _cancelTimer();
        return;
      }
      _seconds--;
      setState(() {
        if (_seconds == 0) {
          _verifyStr = '重新获取';
        } else {
          _verifyStr = '$_seconds(s)';
        }
      });
    });
  }

  _cancelTimer() {
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.mobile_screen_share,
                color: Colors.grey,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              hintText: 'please input phonenumber',
              hintStyle: TextStyle(
                color: Colors.black38,
                fontSize: 14.0,
              ),
            ),
            onChanged: (value) {},
            onSubmitted: (value) {},
          ),
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'please input yanzhengma',
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 14.0,
                      ),
                    ),
                    onChanged: (value) {},
                    onSubmitted: (value) {},
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('yanzhengma');
                  _getSmsCode();
                },
                child: Container(
                  child: Text(_verifyStr),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(237, 237, 237, 1),
                    borderRadius: BorderRadius.circular(120.0),
                  ),
                  width: 110.0,
                  height: 30.0,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(
                width: 10.0,
              )
            ],
          ),
        ),
        Container(
          height: 45.0,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          width: double.infinity,
          margin: EdgeInsets.only(top: 20.0),
          child: RaisedButton(
            onPressed: null,
            child: Text(
              'login',
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0.0,
            color: Colors.blue,
            disabledColor: Colors.blue[200],
          ),
        )
      ],
    );
  }
}
