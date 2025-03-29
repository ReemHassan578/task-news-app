import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_news_app/core/theming/colors.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'features/authentication/presentation/managers/user_status_provider.dart';
import 'features/authentication/presentation/views/login/login_screen.dart';
import 'features/home/presentation/views/home_screen.dart';

class NewsApp extends ConsumerWidget {
   final AppRouter appRouter;
  const NewsApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: MyColors.defaultColor),
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        home: ref.watch(userStatusProvider)!=null ? HomeScreen() : LoginScreen(),
        onGenerateRoute:appRouter.router, 
        
      ),
    );
  }

 getInitialRoute(){

  FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      Navigator;
    } else {
      print('User is signed in!');
    }
  });
}

}
