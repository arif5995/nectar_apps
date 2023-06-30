import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownItemCustom extends StatefulWidget {
  final String label;
  final String hint;
  final List<String> item;
  final Function(String?) onTap;

  const DropdownItemCustom(
      {super.key,
      required this.label,
      required this.item,
      required this.onTap,
      required this.hint});

  @override
  State<DropdownItemCustom> createState() => _DropdownItemCustomState();
}

class _DropdownItemCustomState extends State<DropdownItemCustom> {
  List<DropdownMenuItem<String>> zone = [];
  String? selectedCurrency;

  @override
  void initState() {
    zone = List.generate(
      widget.item.length,
      (index) => DropdownMenuItem(
        value: widget.item[index],
        child: Text(
          widget.item[index],
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 78.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          DropdownButtonFormField(
            items: zone,
            hint: Text(widget.hint),
            value: selectedCurrency,
            onChanged: (value) {
              setState(() {
                selectedCurrency = value!;
              });
            },
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
            onSaved: widget.onTap,
          ),
        ],
      ),
    );
  }
}
