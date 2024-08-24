import 'package:flutter/material.dart';
import 'package:taskaya/core/widgets/gradient_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomGradientWidget(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
