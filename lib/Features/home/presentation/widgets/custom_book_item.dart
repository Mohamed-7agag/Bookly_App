import 'package:bookly_app/Features/home/presentation/widgets/cached_network_book_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkBookImage(imageUrl: imageUrl),
        ),
      ),
    );
  }
}
