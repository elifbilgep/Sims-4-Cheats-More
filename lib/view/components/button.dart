import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final function;
  final Color color;

  const Button({Key key, this.text, this.function, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      child: ElevatedButton(
          onPressed: () => function,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          style: ElevatedButton.styleFrom(
              primary: color,
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ))),
    );
  }
}
