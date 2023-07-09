import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemAccountCustom extends StatelessWidget {
  final IconData iconItem;
  final String nameItem;

  const ItemAccountCustom(
      {super.key, required this.iconItem, required this.nameItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                iconItem,
                color: Colors.black,
                size: 30,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                nameItem,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
