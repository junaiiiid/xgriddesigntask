import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:xgriddesigntask/view_models/home_view_model.dart';
import '../constants/my_colors.dart';
import '../constants/my_text_styles.dart';
import '../services/theme_engine.dart';

class ProfileDetailsBox extends StatelessWidget {
  final IconData? iconData;
  final String name, email;
  const ProfileDetailsBox(
      {Key? key, this.iconData, required this.name, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeEngine = Provider.of<ThemeEngine>(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: CircleAvatar(
            radius: 65.r,
            backgroundColor: MyColors.orange,
            child: CircleAvatar(
              radius: 60.r,
              backgroundColor: MyColors.brown,
              child: Icon(
                iconData ?? FontAwesomeIcons.user,
                size: 50.h,
                color: MyColors.orange,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            name,
            style: MyTextStyles.bold20.copyWith(color: themeEngine.textColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            email,
            style: MyTextStyles.regular20.copyWith(color: themeEngine.textColor),
          ),
        ),
      ],
    );
  }
}

class HomeTiles extends StatelessWidget {
  const HomeTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeViewModel>(context);

    List<Widget> tiles = List.generate(
        homeState.items.length,
        (index) => homeTileChildren(
            leadingIcon: homeState.items[index].leadingIcon,
            title: homeState.items[index].title));

    return Column(
      children: tiles,
    );
  }

  Widget homeTileChildren(
      {required IconData leadingIcon,
      required String title,
      IconData? actionIcon}) {
    return Builder(
      builder: (context) {
        final themeEngine = Provider.of<ThemeEngine>(context);
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Container(
            decoration: BoxDecoration(
              color: themeEngine.homeTileColor,
              borderRadius: BorderRadius.all(
                Radius.circular(25.w),
              ),
            ),
            child: ListTile(
              title: Row(
                children: [
                  Icon(
                    leadingIcon,
                    color: themeEngine.iconColor,
                    size: 25.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    title,
                    style: MyTextStyles.semiBold15.copyWith(color:  themeEngine.textColor),
                  )
                ],
              ),
              trailing: Icon(actionIcon ?? Icons.arrow_forward_ios_outlined,
                  color:
                      Provider.of<ThemeEngine>(context, listen: true)
                          .iconColor),
            ),
          ),
        );
      }
    );
  }
}
