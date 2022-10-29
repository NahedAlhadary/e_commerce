import 'dart:async';

import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

import '../../core/app_router/app_router.dart';
import '../welcome_screen/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      AppRouter.navigateAndPopAll(context,WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Image.asset(getAsset('Group 60')),
        color: kWhiteColor,
      ),
    );
  }
}
