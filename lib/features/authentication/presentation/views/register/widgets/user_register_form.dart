import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/custom_text_form_field.dart';

class UserRegisterForm extends StatelessWidget {
  const UserRegisterForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
  });

  final GlobalKey<State<StatefulWidget>> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 10.sp,
        children: [
          CustomTextFormField(hintText: 'Name', validator: (name){
            if (name == null || name.isEmpty) {
              return 'Please enter your name';
            }
            return null;

          }, controller: nameController, keyboardType: TextInputType.text, prefixIcon: Icon(Icons.person),),
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            prefixIcon: Icon(Icons.email),
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                  .hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          CustomTextFormField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Icon(Icons.lock),
            isPassword: true,
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
