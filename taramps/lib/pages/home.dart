import 'package:flutter/material.dart';
//import 'package:taramps/model/canal_button_model.dart';
import 'package:taramps/pages/widgets/build_app_bar.dart';
import 'package:taramps/pages/widgets/build_body.dart';
import 'package:taramps/pages/widgets/drawer.dart';
//import 'components/canal_button.dart';
//import 'package:graphic/graphic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //List<CanalButtonModel> buttonModels = CanalButtonModel.getDefaultButtons();

    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BuildAppBar(),
      ),
      drawer: DrawerScreen(),
      body: Body(),
    );
  }

//Container Body(List<CanalButtonModel> buttonModels) {
}
