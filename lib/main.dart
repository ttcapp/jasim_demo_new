import 'package:flutter/material.dart';
import 'package:jasim_demo/my_home_page.dart';
import 'package:jasim_demo/second_page.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorKey=GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home:SlideDrawer(
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF000046),
            Color(0xFF1CB5E0),
          ],
        ),
        offsetFromRight: 80.0,
        items: [
          MenuItem('Home',
              icon: Icons.home,
              onTap: (){}),
          MenuItem('Second Page',
              icon: Icons.account_box,
              onTap: (){
            navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=> SecondPage()));
              }),
          MenuItem('Thard Page',
              icon: Icons.light,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.search,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.settings,
              onTap: (){}),
        ],
        child: MyHomePage(),
      ),
    );
  }
}
