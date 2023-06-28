import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return Scaffold(
      backgroundColor: HexColor("#53B175"),
      body: Stack(
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/images/get_started.png'),
            ),
          ),
          Positioned(
            top: 448,
            child: Container(
              width: 414.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/icons/logo_wortel.png'),
                    width: 48.47.w,
                    height: 58.36.h,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    'Welcome\n to our store',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 48.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(height: 30.h,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#53B175"),
                        foregroundColor: HexColor("#53B175"),
                        fixedSize: Size(353.w, 67.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.r))
                    ),
                    onPressed: () {},
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
