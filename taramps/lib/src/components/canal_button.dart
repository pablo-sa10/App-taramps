import 'package:flutter/material.dart';

class CanalButton extends StatelessWidget {
  final Function(int) onButtonPressed;
  const CanalButton({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for(int i = 1; i < 5; i++)
          TextButton(
            onPressed: () => onButtonPressed(i),
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFFc5212d),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              "$i",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          )
      ],
    );
  }
}

// class CanalButton{
//   static TextButton getCanalButton(BuildContext context){
//
//   }
// }
