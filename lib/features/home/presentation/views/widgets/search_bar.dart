import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/styles.dart';
import '../../managers/articles_provider.dart';

class CustomSearchBar extends ConsumerStatefulWidget {
  const CustomSearchBar({super.key});

  @override
  ConsumerState<CustomSearchBar> createState() {
    return _CustomSearchBarState();
  }
}

class _CustomSearchBarState extends ConsumerState<CustomSearchBar> {
  final TextEditingController searchController = TextEditingController();
  Timer? _debounce;

  @override
  Widget build(BuildContext context, ) {
    return Container(
      height: 40.h,
      padding: EdgeInsetsDirectional.only(start: 15.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TextField(
        controller: searchController,
        onChanged: _onChangedSearch,
        style: MyStyles.font14GreyNormal.copyWith(color: Colors.black),
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: MyStyles.font14GreyNormal,
            border: InputBorder.none,
            suffixIcon: const Icon(
              Icons.search,
            )),
      ),
    );
  }

 void _onChangedSearch(String value) {
if(_debounce?.isActive ?? false) _debounce?.cancel();
 _debounce = Timer(const Duration(seconds: 1), () {
        ref.read(articlesProvider.notifier).searchForArticles(value);

    
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}
