import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titles(),
                _roundedButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ],
        ),
      ),
    );

    final boxPink = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 1.0),
            end: FractionalOffset(0.6, 0.0),
            colors: [
              Color.fromRGBO(251, 22, 158, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -100,
          child: boxPink,
        ),
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Classify  this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigatorBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      selectedItemColor: Colors.pinkAccent,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: 30.0),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart, size: 30.0),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervisor_account, size: 30.0),
          label: '',
        ),
      ],
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _createButtonRounded(Colors.blue, Icons.border_all, 'general'),
            _createButtonRounded(
                Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: [
            _createButtonRounded(Colors.pinkAccent, Icons.shop, 'Buy'),
            _createButtonRounded(
                Colors.orange, Icons.insert_drive_file, 'File'),
          ],
        ),
        TableRow(
          children: [
            _createButtonRounded(
                Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
            _createButtonRounded(Colors.green, Icons.cloud, 'Grocery'),
          ],
        ),
        TableRow(
          children: [
            _createButtonRounded(Colors.red, Icons.collections, 'Photos'),
            _createButtonRounded(Colors.teal, Icons.help_outline, 'Help'),
          ],
        ),
      ],
    );
  }

  Widget _createButtonRounded(Color color, IconData icon, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                text,
                style: TextStyle(color: color),
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
//end

}
