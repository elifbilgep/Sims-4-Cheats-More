import 'package:flutter/material.dart';

class Headline1 extends StatelessWidget {
  final String text;

  const Headline1({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}

class Headline2 extends StatelessWidget {
  final String text;

  const Headline2({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}

class Headline3 extends StatelessWidget {
  final String text;

  const Headline3({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

class Headline4 extends StatelessWidget {
  final String text;

  const Headline4({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class Headline5 extends StatelessWidget {
  final String text;

  const Headline5({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}

class Headline6 extends StatelessWidget {
  final String text;

  const Headline6({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 30),
    );
  }
}
