import 'package:camera_ecom_ui/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import 'config/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const OnBoarding(),
      onGenerateRoute: AppRouter.OnGenerateRoute,
      initialRoute: OnBoarding.routeName,
    );
  }
}
