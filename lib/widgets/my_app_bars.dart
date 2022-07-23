import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xgriddesigntask/services/state_service.dart';
import '../constants/my_colors.dart';
import '../services/theme_engine.dart';

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
          onPressed: actionOnTap ?? () {
            Provider.of<ThemeEngine>(StateService.context,listen: false).switchTheme();
          },
          icon: actionIcon ??
              Icon(
                Provider.of<ThemeEngine>(StateService.context,listen: true).themeSwitchIcon,
                color: Provider.of<ThemeEngine>(StateService.context,listen: true).iconColor,
              ),
        ),
      ],
    );
  }
}
