import 'package:flutter/material.dart';

class AppRadiuses{
  AppRadiuses._();

  static const a10 = BorderRadius.all(Radius.circular(10));
  static const a24 = BorderRadius.all(Radius.circular(24));
  static const a30 = BorderRadius.all(Radius.circular(30));
  static const lrT10 = BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10));
  static const lrB10 = BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10));
  static const tbL10 = BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0));
  static const tbR10 = BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0));
}