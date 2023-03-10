import 'package:flutter/material.dart';
import 'dart:math';

class LocalKeyExample extends StatelessWidget {
  const LocalKeyExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PositionedTiles());
  }
}

class PositionedTiles extends StatefulWidget {
  const PositionedTiles({Key? key}) : super(key: key);

  @override
  State<PositionedTiles> createState() => _PositionedTilesState();
}

class _PositionedTilesState extends State<PositionedTiles> {

  List<Widget> tiles = [
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: StatelessColorfullTile(),
    ),
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: StatelessColorfullTile(),
    ),
  ];

  void swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: swapTiles, child: const Text('Toggle')),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tiles,
        )
      ],
    );
  }
}

class StatelessColorfullTile extends StatefulWidget {
  StatelessColorfullTile({Key? key}) : super(key: key);

  @override
  State<StatelessColorfullTile> createState() => _StatelessColorfullTileState();
}

class _StatelessColorfullTileState extends State<StatelessColorfullTile> {
  final myColor = UniqueColorGenerator.getColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: myColor,
    );
  }
}

class UniqueColorGenerator {
  static final _random = Random();
  static Color getColor() {
    return Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1.0);
  }
}

