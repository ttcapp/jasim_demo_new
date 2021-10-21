import 'package:flutter/material.dart';
import 'package:jasim_demo/utills/all_colors.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appBarClkr,
        title: Text("Second Page"),
      ),
    );
  }
}
