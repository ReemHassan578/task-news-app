
import 'package:flutter/material.dart';

import '../../../../../../core/theming/styles.dart';

class WelcomeBackText extends StatelessWidget {
  const WelcomeBackText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome Back',
      style: MyStyles.font24BlackBold,
    );
  }
}
