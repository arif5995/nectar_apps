import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return Scaffold(
      backgroundColor: HexColor("#53B175"),
      body: Center(
          child: Image(
              image: const AssetImage('assets/logo_nectar.png'),
            width: 267.42.w,
            height: 68.61.h,
          ),
      ),
    );
  }
}
