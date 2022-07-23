import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xgriddesigntask/constants/my_colors.dart';
import 'package:xgriddesigntask/constants/my_text_styles.dart';
import 'package:xgriddesigntask/constants/stings.dart';
import 'package:xgriddesigntask/widgets/my_app_bars.dart';
import 'package:xgriddesigntask/widgets/my_buttons.dart';

import '../widgets/standard_widgets.dart';

class HomeScreen extends StatelessWidget {
  static const id = "HOME_SCREEN";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.genericAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///TOP SECTION
              const ProfileDetailsBox(
                  name: MyStrings.userName, email: MyStrings.userEmail),
              MyButtons.upgradeToProButton(
                  buttonText: MyStrings.upgradeToPro, onTap: () {}),
              ///MID SECTION
              const HomeTiles(),
              MyButtons.logoutButton(buttonText: MyStrings.logout, onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
