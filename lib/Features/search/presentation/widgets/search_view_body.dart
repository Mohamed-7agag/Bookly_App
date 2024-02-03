import 'package:bookly_app/Features/search/presentation/widgets/search_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          CustomTextField(),
          const SizedBox(height: 20),
          const Text(
            "Search Result",
            style: Styles.textStyle16,
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SearchListView(),
          ),
        ],
      ),
    );
  }
}
