import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectar_apps/authentification/login_page.dart';
import 'package:nectar_apps/authentification/verification_otp_page.dart';
import 'package:nectar_apps/utils/widgets/button_custom.dart';
import 'package:nectar_apps/utils/widgets/dropdown_custom.dart';
import 'package:nectar_apps/utils/widgets/route_custom.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({super.key});

  @override
  State<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: HexColor("#FEFEFE"),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Image(
                  image: const AssetImage('assets/images/map_image.png'),
                  width: 225.w,
                  height: 170.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Select your location',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Swithch on your location to stay in tune with\n what’s happening in your area',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                DropdownItemCustom(
                  label: 'Your Zone',
                  hint: 'Select Zone',
                  item: [
                    "Jawa Timur",
                    "Jawa Tengah",
                    "Jawa Selatan",
                    "Yogyakarta"
                  ],
                  onTap: (String) {},
                ),
                SizedBox(
                  height: 30.h,
                ),
                DropdownItemCustom(
                  label: 'Your Area',
                  hint: 'Types of your area',
                  item: [
                    "Bangil",
                    "Beji",
                    "Kalianyar",
                    "Kauman"
                  ],
                  onTap: (String) {},
                ),
                SizedBox(height: 80.h,)
              ],
            ),
          )
        ],
      ),
      floatingActionButton: ButtonCustom.ButtonNotIcon(
          backGroundColor: HexColor("#53B175"),
          foreGroundColor: HexColor("#FFFFFF"),
          onTap: () {
            Navigator.push(context, RouteCustom(widget: LoginPage()));
          },
          label: "Submit"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
