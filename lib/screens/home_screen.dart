import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = 'home/';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.black45, Color.fromARGB(255, 32, 143, 194)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
          actions: [
            Icon(
              Icons.person_rounded,
              color: Colors.white,
            )
          ],
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Text("Hello, Kate"),
                  Text("Welcome back!"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
