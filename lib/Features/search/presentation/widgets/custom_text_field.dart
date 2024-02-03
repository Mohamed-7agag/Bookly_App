// ignore_for_file: must_be_immutable
import 'package:bookly_app/Features/search/presentation/view_model/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});

  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: search,
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: Opacity(
          opacity: 0.75,
          child: IconButton(
            onPressed: () {
              BlocProvider.of<SearchBooksCubit>(context)
                  .fetchSearchedBooks(text: search.text.toString());
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
        ),
        enabledBorder: outlinedInputBorder(),
        focusedBorder: outlinedInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlinedInputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
