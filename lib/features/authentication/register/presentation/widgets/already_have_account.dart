

import 'package:flutter/material.dart';
import 'package:task_news_app/core/routing/routes.dart';

import '../../../../../core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('already have an account ?',
            style: MyStyles.font14GreyNormal
                .copyWith(color: Colors.black)),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(
             Routes.login
            );
          },
          child: Text(
            'Login',
            style: MyStyles.font14GreyNormal,
          ),
        ),
      ],
    );
  }
}

