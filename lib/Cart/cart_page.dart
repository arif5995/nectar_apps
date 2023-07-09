import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectar_apps/utils/widgets/button_custom.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: ButtonCustom.ButtonNotIcon(
            backGroundColor: HexColor("#53B175"),
            foreGroundColor: HexColor("#53B175"),
            label: "Go to Chekout", onTap: (){}),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "My Cart",
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey,
            height: 0.5,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image(
                          image: const AssetImage('assets/images/paprica.png'),
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Bell Paper Red",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "1Kg, Price",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                          Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.close_outlined,
                              size: 24.sp,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 40.h,),
                            Text(
                              "\$4.99",
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
                      SizedBox(width: 15.w,)
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 0.5,)
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image(
                          image: const AssetImage('assets/images/egg.png'),
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Egg Chicken Red",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "4Kg, Price",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.close_outlined,
                              size: 24.sp,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 40.h,),
                            Text(
                              "\$1.99",
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
                      SizedBox(width: 15.w,)
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 0.5,)
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image(
                          image: const AssetImage('assets/images/banana.png'),
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Organic bananas",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "12Kg, Price",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.close_outlined,
                              size: 24.sp,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 40.h,),
                            Text(
                              "\$3.00",
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
                      SizedBox(width: 15.w,)
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 0.5,)
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image(
                          image: const AssetImage('assets/images/ginger.png'),
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Ginger",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "250gm, Price",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.close_outlined,
                              size: 24.sp,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 40.h,),
                            Text(
                              "\$2.99",
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
                      SizedBox(width: 15.w,)
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 0.5,)
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image(
                          image: const AssetImage('assets/images/chiken.png'),
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Chicken",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "1Kg, Price",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      border:
                                      Border.all(color: HexColor("#53B175"))),
                                  child: IconButton(
                                    splashRadius: 25,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.close_outlined,
                              size: 24.sp,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 40.h,),
                            Text(
                              "\$9.99",
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
                      SizedBox(width: 15.w,)
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 0.5,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
