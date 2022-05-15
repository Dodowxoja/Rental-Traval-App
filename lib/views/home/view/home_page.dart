import 'package:flutter/material.dart';
import 'package:rental_travel_app/core/widgets/home_ui_2.dart';
import 'package:rental_travel_app/core/widgets/home_ui_1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List filterNum = [0, 1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              //UI 1
              Expanded(flex: 4, child: HomeUi.homeUi1(context)),
              //UI 2
              Expanded(flex: 5, child: HomeUi2.homeUi2(context)),
            ],
          ),
        ),
      ),
    );
  }
}
