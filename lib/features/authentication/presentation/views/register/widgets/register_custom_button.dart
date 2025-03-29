import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_news_app/features/authentication/presentation/managers/user_status_provider.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/widgets/custom_button.dart';

class RegisterCustomButton extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const RegisterCustomButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final navigator = Navigator.of(context);
  final scaffoldMessenger = ScaffoldMessenger.of(context);

    return CustomButton(
      text: 'Register',
      onTap: () async{
        if (formKey.currentState!.validate()) {
        try{
          await ref
              .read(userStatusProvider.notifier)
              .registerUser(emailController.text, passwordController.text);
                      //    navigator.pushReplacementNamed(Routes.home);
              }catch(error){
scaffoldMessenger
                .showSnackBar(SnackBar(content: Text(error.toString())));
         
              }
              
        
        }
      },
    );
  }
}
