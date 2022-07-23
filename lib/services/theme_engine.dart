import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xgriddesigntask/constants/my_colors.dart';

class ThemeEngine extends ChangeNotifier{
  bool isDarkTheme = false;


  IconData get themeSwitchIcon => isDarkTheme?FontAwesomeIcons.moon:FontAwesomeIcons.sun;
  Color get scaffoldBGColor => isDarkTheme?MyColors.black:MyColors.white;
  Color get iconColor => isDarkTheme?MyColors.white:MyColors.black;
  Color get homeTileColor => isDarkTheme?MyColors.darkGrey:MyColors.grey;
  Color get textColor => isDarkTheme?MyColors.white:MyColors.black;
  Color get buttonColor => isDarkTheme?MyColors.pureBlack:MyColors.black;

  void switchTheme(){
    isDarkTheme=!isDarkTheme;
    notifyListeners();
  }
}