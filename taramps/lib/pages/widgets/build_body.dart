import 'package:flutter/material.dart';
import 'package:taramps/pages/components/teste.dart';
import '../../model/graphics_model.dart';
import '../../pages/components/graphics/graphcs.dart';
import '../../model/canal_button_model.dart';
import '../components/canal_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Color? selectedColor;

  void _onButtonPressed(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<CanalButtonModel> buttonModels = CanalButtonModel.getDefaultButtons();
    List<GraphicsModel> graphicData = GraphicsModel.getData();

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
                return CanalButton(
                    model: canal,
                    onPressed: () => _onButtonPressed(canal.color));
              }).toList(),
            ),
          ),
          //if (selectedColor != null) SquareWidget(color: selectedColor!),
          //Graphic(data: graphicData),
          if (selectedColor != null) Graphic(data: graphicData),
        ],
      ),
    );
  }
}
