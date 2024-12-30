// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:office_notification_system/6th_1.dart';
import 'package:office_notification_system/6th_2.dart';
import 'package:office_notification_system/7th_1.dart';
import 'package:office_notification_system/7th_2.dart';
import 'package:office_notification_system/8th_1.dart';
import 'package:office_notification_system/8th_2.dart';
import 'package:office_notification_system/home.dart';
import 'package:office_notification_system/message.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => MainPage(),
      '/6th_1': (context) => sixth_1(),
      '/6th_2': (context) => sixth_2(),
      '/7th_1': (context) => seventh_1(),
      '/7th_2': (context) => seventh_2(),
      '/8th_1': (context) => eighth_1(),
      '/8th_2': (context) => eighth_2(),
      '/Message': (context) => Message(),
    },
  ));
}
