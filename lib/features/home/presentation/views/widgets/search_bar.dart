import 'package:flutter/material.dart';

class SearchBarn extends StatelessWidget {
  const SearchBarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
          )
        ),
      ),
    );
  }
}