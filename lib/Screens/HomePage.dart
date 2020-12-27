import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    Container createSlot({String first, String second, String third}) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: _width * 0.02, vertical: _height * 0.01),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: _width * 0.02, vertical: _height * 0.015),
              child: Text(
                first,
                style: TextStyle(fontSize: _height * 0.021),
              ),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: _width * 0.02, vertical: _height * 0.015),
              child: Text(
                second,
                style: TextStyle(fontSize: _height * 0.021),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: _width * 0.02, vertical: _height * 0.015),
              child: Text(
                third,
                style: TextStyle(fontSize: _height * 0.021),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Crazy Slots'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  createSlot(first: '1', second: '2', third: '3'),
                  createSlot(first: '4', second: '5', third: '6'),
                  createSlot(first: '7', second: '8', third: '9'),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.1),
            padding: EdgeInsets.symmetric(
                horizontal: _width * 0.03, vertical: _height * 0.02),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Text(
              'Spin',
              style: TextStyle(fontSize: _height * 0.021),
            ),
          ),
        ],
      ),
    );
  }
}
