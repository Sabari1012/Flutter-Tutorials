import 'package:flutter/material.dart';

class CheetahButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  const CheetahButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(8),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      shape: new RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: Colors.deepOrange,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      color: Colors.black87,
    );
  }
}
