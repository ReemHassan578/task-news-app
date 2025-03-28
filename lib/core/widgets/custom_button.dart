import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_news_app/core/theming/styles.dart';

import '../theming/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: MyColors.defaultColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextButton(
          style: TextButton.styleFrom(),
          onPressed: onTap,
          child: Text(
            text,
            style: MyStyles.font14WhiteNormal
                .copyWith(fontWeight: FontWeight.w600),
          )),
    );
  }
}
