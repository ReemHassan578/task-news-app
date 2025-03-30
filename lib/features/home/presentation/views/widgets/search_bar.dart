import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_news_app/core/theming/styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsetsDirectional.only(start: 15.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TextField(
        style: MyStyles.font14GreyNormal.copyWith(color: Colors.black),
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: MyStyles.font14GreyNormal,
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
            )),
      ),
    );
  }
}
