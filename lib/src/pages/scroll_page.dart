import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            _pagina1(),
            _pagina2(),
          ],
        ),
      ),
    );
  }

  Widget _pagina1() {
    return Container(
      child: Stack(
        children: [
          _colorBackground(),
          _imageBackground(),
          _texts(),
        ],
      ),
    );
  }

  Widget _colorBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imageBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: [
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child: Text('Bienvenidos'),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            textStyle: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
