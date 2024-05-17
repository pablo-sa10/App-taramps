import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:taramps/model/graphics_model.dart';

class Graphic extends StatefulWidget {
  final List<GraphicsModel> data;
  const Graphic({super.key, required this.data});

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
            data: widget.data.map((model) {
              return {'genre': model.genre, 'sold': model.data};
            }).toList(),
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
          )),
    );
  }
}
