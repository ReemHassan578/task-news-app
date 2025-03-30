
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theming/colors.dart';
import 'core/routing/app_router.dart';
import 'features/authentication/presentation/managers/user_status_provider.dart';
import 'features/authentication/presentation/views/login/login_screen.dart';
import 'features/home/presentation/views/home_screen.dart';

class NewsApp extends ConsumerStatefulWidget {
  final AppRouter appRouter;
  const NewsApp({super.key, required this.appRouter});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _NewsAppState();
  }
}

class _NewsAppState extends ConsumerState<NewsApp> {
  @override
  Widget build(
    BuildContext context,
  ) {
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
        home:
        ref.watch(userStatusProvider) != null
            ? const HomeScreen()
            : const LoginScreen(),
        onGenerateRoute: widget.appRouter.router,
      ),
    );
  }
}
