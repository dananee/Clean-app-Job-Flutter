import 'package:clean_app/constante/title_icon.dart';
import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
      elevation: 0.0,
      centerTitle: true,
      title: Align(
          alignment: Alignment.center,
          child: titleIcon("images/women.png", "clean", 35, 40, 25)));
}
