import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String username;
  String password;

  _login() {
    print(username);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.supervised_user_circle),
              labelText: 'uersname',
              hintText: 'please input username',
              filled: true,
              fillColor: Colors.grey[500],
              border: InputBorder.none,
            ),
            onChanged: (value) {},
            onSubmitted: (value) {},
          ),
          TextField(
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
              hintText: 'input phonenumber',
              hintStyle: TextStyle(
                color: Colors.black38,
                fontSize: 20.0,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.pink[100],
                ),
              ),
            ),
            onChanged: (value) {
              setState(() {
                username = value;
              });
            },
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.code,
                color: Colors.grey,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              hintText: 'input password',
              hintStyle: TextStyle(
                color: Colors.black38,
                fontSize: 20.0,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.pink[100],
                ),
              ),
            ),
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
          ),
          SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                'login',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // login()
                _login();
              },
            ),
          )
        ],
      ),
    );
  }
}
