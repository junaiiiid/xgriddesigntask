import 'package:flutter/material.dart';

class HomeItemsModel {
  final IconData leadingIcon;
  final String title;
  final IconData? actionIcon;

  HomeItemsModel(
      {required this.leadingIcon,
      required this.title,
      this.actionIcon = Icons.arrow_forward_ios_outlined});
}
