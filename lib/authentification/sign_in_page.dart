import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nectar_apps/authentification/number_phone_page.dart';
import 'package:nectar_apps/utils/widgets/button_custom.dart';
import 'package:nectar_apps/utils/widgets/route_custom.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    final TextEditingController phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: HexColor("#FCFCFC"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 414.w,
              height: 375.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/sign_in_img.png'),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: 60.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15.w,),
                Text(
                  'Get your groceries\nwith nectar',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, RouteCustom(widget: NumberPhonePage()));
                },
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber num) {},
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: PhoneNumber(isoCode: 'ID'),
                  textFieldController: phoneController,
                  formatInput: true,
                  keyboardType: TextInputType.number,
                  keyboardAction: TextInputAction.done,
                  isEnabled: false,
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Text(
                'Or connect with social media',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ButtonCustom.ButtonIcon(
                backGroundColor: HexColor("#5383EC"),
                foreGroundColor: HexColor("#FFFFFF"),
                icon: Icon(FontAwesomeIcons.google, color: Colors.white, size: 24.0),
                onTap: (){},
                label: "Continue With Google"),
            SizedBox(height: 15.h,),
            ButtonCustom.ButtonIcon(
                backGroundColor: HexColor("#4A66AC"),
                foreGroundColor: HexColor("#FFFFFF"),
                icon: Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 24.0),
                onTap: (){},
                label: "Continue With Facebook")
          ],
        ),
      ),
    );
  }
}
