import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://wallpaperaccess.com/full/170249.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
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
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _crearAction(Icons.call, 'Call'),
        _crearAction(Icons.near_me, 'Route'),
        _crearAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _crearAction(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 15.0),
        ),
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Cillum duis duis nisi aliquip ut nostrud. Minim amet voluptate ipsum non anim id in aliquip enim mollit incididunt do velit magna. Nisi reprehenderit quis cillum labore proident. Adipisicing nulla cupidatat eu cillum et irure aliqua duis eu pariatur Lorem aliquip amet ullamco. Eu est amet mollit aute minim fugiat eu consequat reprehenderit. Consequat ut sint Lorem aliqua nulla quis cupidatat.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
