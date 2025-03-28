import 'package:flutter/material.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/custom_button.dart';

class RegisterCustomButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const RegisterCustomButton({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Register',
      onTap: () {
       if(formKey.currentState!.validate()){
Navigator.of(context).pushReplacementNamed(Routes.home);
       }
      },
    );
  }
}
