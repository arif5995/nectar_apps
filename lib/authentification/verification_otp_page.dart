import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectar_apps/authentification/select_location_page.dart';
import 'package:nectar_apps/utils/widgets/route_custom.dart';

class VerificationOTPPage extends StatelessWidget {
  const VerificationOTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    final TextEditingController phoneController = TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black,
          onPressed: (){
            Navigator.pop(context);
          },),
      ),
      backgroundColor: HexColor("#FEFEFE"),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200.h,),
                Text(
                  'Enter your 4-digit code',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 50.h,),
            Text(
              'Code',
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),),
                SizedBox(height: 10.h,),
                SizedBox(
                  width: 350.w,
                  child: OtpTextField(
                    numberOfFields: 4,
                    mainAxisAlignment: MainAxisAlignment.start,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          }
                      );
                    }, // end onSubmit
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Resend Code',
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: HexColor("#53B175"),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
          FloatingActionButton(
            backgroundColor: HexColor("#53B175"),
            onPressed: () {
              Navigator.push(context, RouteCustom(widget: SelectLocationPage()));
            },
            child: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
