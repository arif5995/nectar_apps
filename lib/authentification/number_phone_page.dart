import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nectar_apps/authentification/select_location_page.dart';
import 'package:nectar_apps/utils/widgets/route_custom.dart';

class NumberPhonePage extends StatelessWidget {
  const NumberPhonePage({super.key});

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
              children: [
                SizedBox(height: 200.h,),
                Text(
                  'Enter your mobile number',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 50.h,),
                SizedBox(
                  width: 350.w,
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
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor("#53B175"),
        onPressed: () {
          print("Lanjut");
          Navigator.push(context, RouteCustom(widget: SelectLocationPage()));

        },
        child: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.endDocked,
    );
  }
}
