import 'package:flutter/material.dart';
import 'package:taramps/model/canal_button_model.dart';

class CanalButton extends StatefulWidget {
  final CanalButtonModel model;

  const CanalButton({super.key, required this.model});

  @override
  State<CanalButton> createState() => _CanalButtonState();
}

class _CanalButtonState extends State<CanalButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(const Color(0xFFda251c)),
        fixedSize: WidgetStateProperty.all<Size>(const Size(50, 40)),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(widget.model.canal),
      onPressed: () {},
    );
  }
}

