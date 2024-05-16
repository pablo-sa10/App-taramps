import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class Graphic extends StatefulWidget {
  const Graphic({super.key});

  @override
  State<Graphic> createState() => _GraphicState();
}

class _GraphicState extends State<Graphic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 20),
      child: SizedBox(
          height: 500,
          child: Chart(
            data: const [
              { 'genre': 'Sports', 'sold': 275 },
              { 'genre': 'Strategy', 'sold': 115 },
              { 'genre': 'Action', 'sold': 120 },
              { 'genre': 'Shooter', 'sold': 350 },
              { 'genre': 'Other', 'sold': 150 },
            ],
            variables: {
              'genre': Variable(
                accessor: (Map map) => map['genre'] as String,
              ),
              'sold': Variable(
                accessor: (Map map) => map['sold'] as num,
              ),
            },
            marks: [IntervalMark()],
            axes: [
              Defaults.horizontalAxis,
              Defaults.verticalAxis,
            ],
          )
      ),
    );
  }
}
