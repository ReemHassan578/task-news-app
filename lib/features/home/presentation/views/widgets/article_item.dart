import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_news_app/core/theming/styles.dart';
import 'package:task_news_app/features/home/domain/entities/article_entity.dart';

class ArticleItem extends StatelessWidget {
  final ArticleEntity article;
  const ArticleItem({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 160.h,
        padding:
            EdgeInsetsDirectional.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Row(
          spacing: 20.w,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: CachedNetworkImage(
                height: double.infinity,
                width: 120.w,
                fit: BoxFit.cover,
                imageUrl: article.urlToImage,
              ),
            ),
            Expanded(
              child: Column(
                spacing: 2.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(article.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          MyStyles.font24BlackBold.copyWith(fontSize: 20.sp)),
                  Expanded(
                    child: Text(article.description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: MyStyles.font14GreyNormal
                            .copyWith(fontSize: 16.sp, color: Colors.black)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
