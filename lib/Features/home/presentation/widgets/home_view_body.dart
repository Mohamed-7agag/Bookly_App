import 'package:bookly_app/Features/home/presentation/widgets/best_seller_listview.dart';
import 'package:bookly_app/Features/home/presentation/widgets/featured_books_listview.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_home_view_appbar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    //! to make custom scroll view to all component in the screen
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 45),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
