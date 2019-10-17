import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class text_section extends StatelessWidget{
  Color _color;

  text_section(this._color){}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Text('hi'),
    );
  }

}