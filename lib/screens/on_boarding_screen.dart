import 'package:camera_ecom_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  static const routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => OnBoarding());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.black, Color.fromARGB(255, 5, 100, 145)]),
        image: DecorationImage(
          image: AssetImage('assets/images/cam16.jpg'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Welcome to the \n Cameras Store",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Collect beautiful moments with unique \n \tcamera and enjoy your memories! ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            }),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Text(
                "START",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
