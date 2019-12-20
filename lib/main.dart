import 'package:flutter/material.dart';
import 'package:flutter_app/stack_overflow/future_navigator.dart';
import 'package:flutter_app/stack_overflow/input_type_action.dart';
import 'package:flutter_app/stack_overflow/listview_center.dart';
import 'package:flutter_app/stack_overflow/stack_position.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureNavigation(),
    );
  }
}
