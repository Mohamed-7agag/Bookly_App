import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.color,
    this.fontsize,
    this.borderRadius,
    this.onpressed,
  });
  final Color backgroundColor;
  final String text;
  final Color color;
  final double? fontsize;
  final BorderRadius? borderRadius;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 49,
        child: ElevatedButton(
          onPressed: onpressed ?? (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  const BorderRadius.all(
                    Radius.circular(16),
                  ),
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: color,
              fontWeight: FontWeight.w900,
              fontSize: fontsize,
            ),
          ),
        ),
      ),
    );
  }
}
