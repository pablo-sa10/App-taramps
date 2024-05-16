import 'package:flutter/material.dart';
import '../../model/canal_button_model.dart';
import 'package:graphic/graphic.dart';

import '../components/canal_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    List<CanalButtonModel> buttonModels = CanalButtonModel.getDefaultButtons();

    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.black12,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buttonModels.map((canal) {
                return CanalButton(model: canal);
              }).toList(),
            ),
          ),
          Padding(
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
          )
        ],
      ),
    );
  }
}
