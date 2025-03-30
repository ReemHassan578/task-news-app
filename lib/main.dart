import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_news_app/core/routing/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/di/dependency_injection.dart';
import 'firebase_options.dart';
import 'news_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ProviderScope(
      child: NewsApp(
    appRouter: AppRouter(),
  )));
}
