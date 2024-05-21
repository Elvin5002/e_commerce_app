import 'package:e_commerce_app/di/locator.dart';
import 'package:flutter/material.dart';
import 'ui/app.dart';

void main() async{
  await setupLocator();
  runApp(const MyApp());
}
