import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.h,),
            Text(
              'Find Product',
              textAlign: TextAlign.left,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15.h,),
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
            SizedBox(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#53B175")
                        ),
                        color: HexColor("#EEF7F1"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/vegetable.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Fresh Fruits \n& Vegetables',
                            textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#FCD5AD")
                        ),
                        color: HexColor("#FEF6ED"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/oil.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Cooking Oil \n& Ghee',
                            textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(right: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#F7A593")
                        ),
                        color: HexColor("#FDE9E4"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/meat.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Meat & Fish',
                            textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#E4CDEB")
                        ),
                        color: HexColor("#F4EBF7"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/bakkery.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Cooking Oil \n& Ghee',
                            textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(right: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#FDE598")
                        ),
                        color: HexColor("#FFF9E5"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/eggdairy.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Dairy & Eggs',
                            textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#B7DFF5")
                        ),
                        color: HexColor("#EDF7FD"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/bevarages.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Beverages',
                            textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(right: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#53B175")
                        ),
                        color: HexColor("#EEF7F1"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/vegetable.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Fresh Fruits \n& Vegetables',
                            textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 173.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            color: HexColor("#FCD5AD")
                        ),
                        color: HexColor("#FEF6ED"),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/oil.png'),
                            width: 100.w,
                            height: 100.h,
                          ),
                          SizedBox(height: 15.h,),
                          Text(
                            'Cooking Oil \n& Ghee',
                            textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}
