import 'package:crazy_slots/Utilities/Algorithm.dart';
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

    Algorithm algorithm = new Algorithm();
    List first = ['1', '2', '3'];
    List second = ['4', '5', '6'];
    List third = ['7', '8', '9'];

    List<Object> _rotateList(List<Object> list, int i) {
      if (list == null || list.isEmpty) return list;
      return list.sublist(list.length - i)
        ..addAll(list.sublist(0, list.length - i));
    }

    void _spin() {
      setState(() {
        first = _rotateList(first, 1);
        print(first);
      });
    }

    Container createSlot({List displayList}) {
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
                displayList[0],
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
                displayList[1],
                style: TextStyle(fontSize: _height * 0.021),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: _width * 0.02, vertical: _height * 0.015),
              child: Text(
                displayList[2],
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
                  createSlot(displayList: first),
                  createSlot(displayList: second),
                  createSlot(displayList: third),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _spin();
            },
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
