import 'package:flutter/material.dart';
import 'package:navigation_and_routing/routes/route_generator.dart';
import 'package:navigation_and_routing/screens/first_page.dart';
import 'package:navigation_and_routing/screens/second_page.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      // routes: {
      //   '/firstPage': (context) =>
      //       const FirstPage(data: 'This is first page parameter text--11'),
      //   '/secondPage': (context) =>
      //       const SecondPage(data: 'This is second page parameter text- 2222'),
      // },

      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
