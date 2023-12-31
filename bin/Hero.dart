import 'dart:math';
import 'package:flutter/material.dart';
class LHero extends StatefulWidget {
  LHero({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _LHeroState createState() => _LHeroState();
}
class _LHeroState extends State<LHero> {
  Widget _smallImage(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }
  Widget _bigImage(Color color) {
    return Container(
      width: 300,
      height: 300,
      color: color,
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List<Widget>.generate(15, (index) {

        Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
            .withOpacity(1.0);


        Key _n1 = GlobalKey();
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: GestureDetector(
                key: _n1,
                child: Hero(
                  tag: index.toString(),
                  child: _smallImage(color),
                ),
                onTap: () => _fullImagePage(context, color, index.toString()),
              ),
              title: Text('Tap for transition.'),
            ));
      }),
    );
  }
  void _fullImagePage(BuildContext context, Color color, String tag) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          title: Text("Big Image"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: tag,
                child: _bigImage(color),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}