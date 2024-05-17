//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'dart:core';

class GraphicsModel{
  static List<GraphicsModel> getData(){
    return [
      GraphicsModel(data: 100, genre: 'Sports'),
      GraphicsModel(data: 200, genre: 'a'),
      GraphicsModel(data: 300, genre: 'b'),
      GraphicsModel(data: 400, genre: 'c'),
      GraphicsModel(data: 500, genre: 'd'),
    ];
  }

  num data;
  String genre;
  GraphicsModel({required this.data, required this.genre});
}