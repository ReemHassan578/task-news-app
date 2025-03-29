import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../authentication/presentation/managers/user_status_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    return Scaffold(
      body: Center(
        child: 
        ElevatedButton(onPressed: ()async{await ref.read(userStatusProvider.notifier).signOut();
}, child: Text('Logout'),),
      ),
    );
  }
}