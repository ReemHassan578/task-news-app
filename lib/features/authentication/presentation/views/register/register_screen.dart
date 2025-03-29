import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/sign_with_google_button.dart';
import 'widgets/already_have_account.dart';
import 'widgets/create_account_text.dart';
import 'widgets/register_custom_button.dart';
import 'widgets/user_register_form.dart';

class RegisterScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 40.sp,
                children: [
                  CreateAccountText(),
                  UserRegisterForm(
                    formKey: formKey,
                    emailController: emailController,
                    passwordController: passwordController,
                    nameController: nameController,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RegisterCustomButton(
                            formKey: formKey,
                            emailController: emailController,
                            passwordController: passwordController,
                          ),
                          SignWithGoogleButton(),
                        ],
                      ),
                      AlreadyHaveAccount(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
