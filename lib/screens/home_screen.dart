import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:xgriddesigntask/constants/stings.dart';
import 'package:xgriddesigntask/services/theme_engine.dart';
import 'package:xgriddesigntask/widgets/my_app_bars.dart';
import 'package:xgriddesigntask/widgets/my_buttons.dart';

import '../widgets/standard_widgets.dart';

class HomeScreen extends StatelessWidget {
  static const id = "HOME_SCREEN";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeEngine = Provider.of<ThemeEngine>(context);
    return Scaffold(
      backgroundColor: themeEngine.scaffoldBGColor,
      appBar: MyAppBars.genericAppBar(backgroundColor: themeEngine.scaffoldBGColor,),
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
              MyButtons.logoutButton(buttonText: MyStrings.logout, onTap: (){},buttonColor: themeEngine.buttonColor),
            ],
          ),
        ),
      ),
    );
  }
}
