import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/my_colors.dart';
import '../constants/my_text_styles.dart';

class MyButtons{

  static Widget upgradeToProButton({required String buttonText,required Function()? onTap,Color? buttonColor}){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor??MyColors.orange,
            borderRadius: BorderRadius.all(Radius.circular(25.w),),
          ),
          padding: EdgeInsets.all(15.h),
          child: Text(buttonText,style: MyTextStyles.semiBold20.copyWith(color: MyColors.brown),),
        ),
      ),
    );
  }

  static Widget logoutButton({Color? buttonColor,required String buttonText,required Function()? onTap}){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: buttonColor??MyColors.black,
            borderRadius: BorderRadius.all(Radius.circular(25.w),),
          ),
          child: Center(child: Text(buttonText,style: MyTextStyles.bold20.copyWith(color: MyColors.white),)),
        ),
      ),
    );
  }

}