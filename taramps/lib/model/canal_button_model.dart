import 'package:flutter/material.dart';

class CanalButtonModel{
  static List<CanalButtonModel> getDefaultButtons(){
    return[
    //   CanalButtonModel(canal: '1', color: Colors.red),
    //   CanalButtonModel(canal: '2', color: Colors.blue),
    //   CanalButtonModel(canal: '3', color: Colors.green),
    //   CanalButtonModel(canal: '4', color: Colors.yellow),
    // ];return[
      CanalButtonModel(canal: "1", data: 150),
      CanalButtonModel(canal: "2", data: 150),
      CanalButtonModel(canal: "3", data: 150),
      CanalButtonModel(canal: "4", data: 150),
    ];
  }

  String canal;
  int data;
  //Color color;

  CanalButtonModel({required this.canal, required this.data /*required this.color*/});
}
