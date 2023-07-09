import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectar_apps/authentification/login_page.dart';
import 'package:nectar_apps/utils/widgets/button_custom.dart';
import 'package:nectar_apps/utils/widgets/text_form_field_custom.dart';
import 'package:nectar_apps/utils/extensions/string_extensions.dart'
as stringext;

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: HexColor("#FEFEFE"),
      body: SingleChildScrollView(
        child: Stack(
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
                    height: 150.h,
                  ),
                  Image(
                    image: const AssetImage('assets/icons/wortel_color_icon.png'),
                    width: 47.w,
                    height: 55.h,
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Enter your credentials to continue',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  TextFormFieldCustom.NormalInput(
                    label: "Username",
                    hint: "Username",
                    textInputType: TextInputType.emailAddress,
                    validation: (value) {

                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormFieldCustom.NormalInput(
                    label: "Email",
                    hint: "Your email",
                    textInputType: TextInputType.emailAddress,
                    validation: (value) {
                      value!.isValidEmail() ? null : "Check your email";
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormFieldCustom.PasswordInput(
                    label: "Password",
                    hint: "Your password",
                    obscure: obscure,
                    textInputType: TextInputType.text,
                    validation: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'By continuing you agree to our',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,),
                          ),
                        ),
                        TextSpan(
                            text: ' Term of Service ',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                color: HexColor("#53B175"),
                                fontSize: 14.sp,),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Login Text Clicked');
                              },
                        ),
                        TextSpan(
                          text: 'and',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,),
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy Policy ',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: HexColor("#53B175"),
                              fontSize: 14.sp,),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Login Text Clicked');
                            },
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  ButtonCustom.ButtonNotIcon(
                      backGroundColor: HexColor("#53B175"),
                      foreGroundColor: HexColor("#FFFFFF"),
                      onTap: () {},
                      label: "Submit"),
                  SizedBox(height: 10.h,),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,),
                          ),
                        ),
                        TextSpan(
                            text: 'Login',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                color: HexColor("#53B175"),
                                fontSize: 14.sp,),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Login Text Clicked');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LoginPage()));
                              }),
                      ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
