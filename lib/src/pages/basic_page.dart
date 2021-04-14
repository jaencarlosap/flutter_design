import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage('https://wallpaperaccess.com/full/170249.jpg'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('imagen landscape', style: styleTitle),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text('este es un gran paisaje', style: styleSubTitle),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 30.0,
                ),
                Text(
                  '41',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
