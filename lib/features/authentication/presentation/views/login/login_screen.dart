import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/sign_with_google_button.dart';
import 'widgets/login_custom_button.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/user_login_form.dart';
import 'widgets/welcome_back_text.dart';

class LoginScreen extends StatefulWidget {

 const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
                const WelcomeBackText(),
                UserLoginForm(
                  formKey: formKey,
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LoginCustomButton(
                          formKey: formKey,
                          emailController: emailController,
                          passwordController: passwordController,
                        ),
                        const SignWithGoogleButton(),
                      ],
                    ),
                    const DontHaveAccount(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  
  }
  @override
  void dispose() {
emailController.dispose();
passwordController.dispose();

    super.dispose();
  }
}
