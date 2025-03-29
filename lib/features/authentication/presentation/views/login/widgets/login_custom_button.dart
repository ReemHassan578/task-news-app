import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_news_app/features/authentication/presentation/managers/user_status_provider.dart';
import '../../../../../../core/widgets/custom_button.dart';

class LoginCustomButton extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
final TextEditingController emailController;
  final TextEditingController passwordController;  
  
  const LoginCustomButton({
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
      text: 'Login',
      onTap: () async {
        if (formKey.currentState!.validate()) {
try{await          ref.read(userStatusProvider.notifier).signInWithEmailAndPassword(emailController.text, passwordController.text);
}catch(error){
  scaffoldMessenger
                .showSnackBar(SnackBar(content: Text(error.toString())));
}        }
      },
    );
  }
}