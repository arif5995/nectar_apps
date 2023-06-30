import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ButtonCustom {
  static Widget ButtonIcon({
    required HexColor backGroundColor,
    required HexColor foreGroundColor,
    required Icon icon,
    required String label,
    required Function() onTap,
  }) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backGroundColor,
        foregroundColor: foreGroundColor,
        fixedSize: Size(353.w, 67.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.r),
        ),
      ),
      onPressed: onTap,
      icon: icon,
      label: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.quicksand(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }

  static Widget ButtonNotIcon({
    required HexColor backGroundColor,
    required HexColor foreGroundColor,
    required String label,
    required Function() onTap,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backGroundColor,
        foregroundColor: foreGroundColor,
        fixedSize: Size(353.w, 67.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.r),
        ),
      ),
      onPressed: onTap,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.quicksand(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
// class ButtonCustom extends StatelessWidget {
//   final HexColor backGroundColor;
//   final HexColor foreGroundColor;
//   final Icon icon;
//   final String label;
//   final Function() onTap;
//
//   const ButtonCustom(
//       {super.key,
//       required this.backGroundColor,
//       required this.foreGroundColor,
//       required this.icon,
//       required this.onTap,
//       required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     factory ButtonCustom.icon({
//
//     });
//     return ElevatedButton.icon(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: backGroundColor,
//         foregroundColor: foreGroundColor,
//         fixedSize: Size(353.w, 67.h),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(19.r),
//         ),
//       ),
//       onPressed: onTap,
//       icon: icon,
//       label: Text(
//         label,
//         textAlign: TextAlign.center,
//         style: GoogleFonts.quicksand(
//           textStyle: TextStyle(
//             color: Colors.white,
//             fontSize: 18.sp,
//           ),
//         ),
//       ),
//     );
//   }
// }
