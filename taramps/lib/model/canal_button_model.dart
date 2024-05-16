class CanalButtonModel{
  static List<CanalButtonModel> getDefaultButtons(){
    return[
      CanalButtonModel(canal: '1'),
      CanalButtonModel(canal: '2'),
      CanalButtonModel(canal: '3'),
      CanalButtonModel(canal: '4'),
    ];
  }

  String canal;
  CanalButtonModel({required this.canal});
}
