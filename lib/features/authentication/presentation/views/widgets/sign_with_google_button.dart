import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_news_app/features/authentication/presentation/managers/user_status_provider.dart';

import '../../../../../core/theming/styles.dart';

class SignWithGoogleButton extends ConsumerWidget {
  const SignWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      label: Text('Google',
          style: MyStyles.font14WhiteNormal
              .copyWith(fontWeight: FontWeight.w600, color: Colors.black)),
      onPressed: () {
        ref.read(userStatusProvider.notifier).signInWithGoogle();
      },
      icon: const FaIcon(
        FontAwesomeIcons.google,
        color: Colors.red,
      ),
    );
  }
}
