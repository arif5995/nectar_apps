import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectar_apps/utils/widgets/button_custom.dart';
import 'package:nectar_apps/utils/widgets/item_account_custom.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: ButtonCustom.ButtonIcon(
            backGroundColor: HexColor("#53B175"),
            foreGroundColor: HexColor("#53B175"),
            label: "Log Out",
            onTap: () {}, icon: Icon(Icons.logout, color: Colors.white,)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 65.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 2),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/cj_gta.png")))),
                    SizedBox(
                      width: 20.w,
                    ),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Carl Johnson ",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const WidgetSpan(
                                  child: Icon(Icons.edit,
                                      color: Colors.green, size: 18),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'CarlJohnson@givmail.com',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              )
            ],
          ),
          ItemAccountCustom(
              iconItem: Icons.shopping_bag_outlined,
              nameItem: 'Orders'),
          ItemAccountCustom(
              iconItem: Icons.account_box_outlined,
              nameItem: 'My Details'),
          ItemAccountCustom(
              iconItem: Icons.location_on_outlined,
              nameItem: 'Delivery Address'),
          ItemAccountCustom(
              iconItem: Icons.payment_outlined,
              nameItem: 'Paymemnt Methods'),
          ItemAccountCustom(
              iconItem: Icons.discount_outlined,
              nameItem: 'Promo Card'),
          ItemAccountCustom(
              iconItem: Icons.notifications_active_outlined,
              nameItem: 'Notifications'),
          ItemAccountCustom(
              iconItem: Icons.help_outline,
              nameItem: 'Help'),
          ItemAccountCustom(
              iconItem: Icons.info_outlined,
              nameItem: 'About'),
        ],
      ),
    );
  }
}
