import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemFavouriteCustom extends StatelessWidget {
  final String assetImage;
  final String itemName;
  final String sizeItem;
  final String priceItem;

  const ItemFavouriteCustom(
      {super.key,
      required this.assetImage,
      required this.itemName,
      required this.sizeItem,
      required this.priceItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Image(
                image: AssetImage('assets/images/${assetImage}.png'),
                width: 100.w,
                height: 100.h,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    itemName,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    sizeItem,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${priceItem}  ",
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
            const Expanded(
              flex: 1,
              child:
                  Icon(Icons.arrow_forward_ios, color: Colors.black, size: 14),
            ),
            SizedBox(
              width: 10.w,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
