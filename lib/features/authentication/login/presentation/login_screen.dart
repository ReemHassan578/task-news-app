import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/login_custom_button.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/user_login_form.dart';
import 'widgets/welcome_back_Text.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 40.sp,
              children: [
                WelcomeBackText(),
                UserLoginForm(
                  formKey: formKey,
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                Column(
                  children: [
                    LoginCustomButton(formKey: formKey),
                    DontHaveAccount(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
