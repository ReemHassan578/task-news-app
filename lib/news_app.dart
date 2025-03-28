import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_news_app/core/theming/colors.dart';
import 'package:task_news_app/features/authentication/login/presentation/login_screen.dart';
import 'package:task_news_app/features/authentication/register/presentation/register_screen.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class NewsApp extends StatelessWidget {
   final AppRouter appRouter;
  const NewsApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
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
        initialRoute: Routes.login,
        onGenerateRoute:appRouter.router, 
      ),
    );
  }
}
