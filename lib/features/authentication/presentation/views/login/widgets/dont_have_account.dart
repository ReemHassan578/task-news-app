

import 'package:flutter/material.dart';
import '../../../../../../core/routing/routes.dart';

import '../../../../../../core/theming/styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('don\'t have an account ?',
            style: MyStyles.font14GreyNormal
                .copyWith(color: Colors.black)),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
             Routes.register
            );
          },
          child: Text(
            'Register',
            style: MyStyles.font14GreyNormal,
          ),
        ),
      ],
    );
  }
}

