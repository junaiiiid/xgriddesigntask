import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xgriddesigntask/models/home_items_model.dart';

class HomeViewModel extends ChangeNotifier{

  List<HomeItemsModel> items = [
    HomeItemsModel(leadingIcon: Icons.shield, title: "Privacy"),
    HomeItemsModel(leadingIcon: Icons.refresh, title: "Purchase History"),
    HomeItemsModel(leadingIcon: Icons.help_outline, title: "Help & Support"),
    HomeItemsModel(leadingIcon: Icons.settings, title: "Settings"),
    HomeItemsModel(leadingIcon: FontAwesomeIcons.userPlus, title: "Invite a Friend")
  ];
}