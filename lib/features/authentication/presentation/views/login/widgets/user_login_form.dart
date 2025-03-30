import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/custom_text_form_field.dart';

class UserLoginForm extends StatelessWidget {
  const UserLoginForm({
    super.key,
    required this.formKey, required this.emailController, required this.passwordController,
  });

  final GlobalKey<State<StatefulWidget>> formKey;
  final TextEditingController emailController ;
  final TextEditingController passwordController ;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      
      child: Column(
        spacing: 10.sp,
        children: [
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            prefixIcon: const Icon(Icons.email),
            hintText: 'Email',validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value)) {
              return 'Please enter a valid email address';
            }
            return null;
            
          },),
          CustomTextFormField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword
            ,
            prefixIcon: const Icon(Icons.lock),
            isPassword:true  ,
            hintText: 'Password',validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters long';
            }
            return null;
          },),
        ],
      ),
    );
  }
}
