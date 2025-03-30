import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_news_app/core/widgets/custom_button.dart';

import '../../../../authentication/presentation/managers/user_status_provider.dart';

class SignOutButton extends ConsumerWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      onTap: () async {
        await ref.read(userStatusProvider.notifier).signOut();
      },
      text: 'Sign Out',
    );
  }
}
