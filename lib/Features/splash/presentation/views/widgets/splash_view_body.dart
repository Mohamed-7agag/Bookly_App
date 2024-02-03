import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 250,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Read Free Books',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).replace('/homeView');
    });
  }
}
