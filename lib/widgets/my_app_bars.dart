import 'package:flutter/material.dart';
import '../constants/my_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBars {
  static AppBar genericAppBar(
      {Color? backgroundColor,
      double? elevation,
      Widget? actionIcon,
      Function()? actionOnTap}) {
    return AppBar(
      backgroundColor: backgroundColor ?? MyColors.white,
      elevation: elevation ?? 0.0,
      actions: [
        IconButton(
          onPressed: actionOnTap ?? () {},
          icon: actionIcon ??
              const Icon(
                FontAwesomeIcons.moon,
                color: MyColors.black,
              ),
        )
      ],
    );
  }
}
