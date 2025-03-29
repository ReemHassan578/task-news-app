
import 'package:flutter/material.dart';

import '../../../../../../core/theming/styles.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Create Your Account',
      style: MyStyles.font24BlackBold,
    );
  }
}
