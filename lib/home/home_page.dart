import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Image(
                image: const AssetImage('assets/icons/wortel_color_icon.png'),
                width: 30.w,
                height: 35.h,
              ),
              SizedBox(height: 10.h),
              RichText(
                text: TextSpan(
                  children: [
                    const WidgetSpan(
                      child:
                          Icon(Icons.location_on, color: Colors.grey, size: 14),
                    ),
                    TextSpan(
                      text: " Bangil, Jawa Timur",
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor("#F2F3F2"),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Search Store',
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Image(
                image: const AssetImage('assets/images/banner_home.png'),
                width: 380.w,
                height: 115.h,
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exclusive Offer',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'See All',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: HexColor("#53B175"),
                            fontSize: 16.sp,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 248.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/banana.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Organic Bananas',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '7 Pcs, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/banana.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Organic Bananas',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '7 Pcs, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/banana.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Organic Bananas',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '7 Pcs, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Selling',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'See All',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: HexColor("#53B175"),
                          fontSize: 16.sp,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 248.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/apple.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Red Apple',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '1 Kg, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/apple.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Red Apple',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '1 Kg, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/apple.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Red Apple',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '1 Kg, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Groceries',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'See All',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: HexColor("#53B175"),
                          fontSize: 16.sp,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 100.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 250.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: HexColor("#FEF1E4"),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/pulses.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(width: 15.h,),
                            Text(
                              'Pulses',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 250.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: HexColor("#E5F3EA"),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/rice.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(width: 15.h,),
                            Text(
                              'Rices',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 248.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/beef.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Beef Bone',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '7 Kg, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/chiken.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Broiler Chiken',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '7 Kg, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 173.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Colors.grey
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/beef.png'),
                              width: 100.w,
                              height: 62.h,
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              'Beef Bone',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '7 Kg, Priceg',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$4.99',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: HexColor("#53B175")
                                  ),
                                  child: Center(child: Icon(Icons.add),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
