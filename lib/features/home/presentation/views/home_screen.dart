import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/article_entity.dart';
import '../managers/articles_provider.dart';
import 'widgets/fetch_articles_status_widget.dart';
import 'widgets/search_bar.dart';
import 'widgets/sign_out_button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
 
 @override
  void initState() {
    super.initState();
  //  ref.read(articlesProvider.notifier).fetchArticles();
  }
  @override
  Widget build(BuildContext context,) {
    ref.listen<AsyncValue<List<ArticleEntity>>>(articlesProvider, (previous, next) {
      next.whenOrNull(
        error: (message, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.toString())),
          );
        },
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Column(
            spacing: 20.h,
            children:const [
               CustomSearchBar(),
  FetchArticlesStatusWidget(),
              
                 
               SignOutButton(),
            ],
          ),


                      

        ),
      ),
    );
  }
}

