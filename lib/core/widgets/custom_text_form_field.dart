import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final String? Function(String?) validator;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final Widget prefixIcon;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.validator,
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
    required this.prefixIcon,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isHidden;
  @override
  void initState() {
    super.initState();
    isHidden = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isHidden,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      style: MyStyles.font14GreyNormal.copyWith(color: Colors.black),
      cursorColor: MyColors.defaultColor,
      decoration: InputDecoration(
        focusColor: MyColors.defaultColor,
        prefixIcon: widget.prefixIcon,
        suffixIcon: !widget.isPassword
            ? null
            : IconButton(
                onPressed: () {
                  setState(() {
                    isHidden = !isHidden;
                  });
                },
                icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
              ),
        contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.2),
        hintText: widget.hintText,
        hintStyle: MyStyles.font14GreyNormal,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: MyColors.defaultColor)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: MyColors.errorColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: MyColors.grey)),
      ),
    );
  }
}
