import 'package:flutter/material.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/custom_button.dart';

class LoginCustomButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginCustomButton({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Login',
      onTap: () {
       if(formKey.currentState!.validate()){
Navigator.of(context).pushReplacementNamed(Routes.home);
       }
      },
    );
  }
}
