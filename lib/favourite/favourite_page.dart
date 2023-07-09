import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectar_apps/utils/widgets/button_custom.dart';
import 'package:nectar_apps/utils/widgets/item_favourite_custom.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: ButtonCustom.ButtonNotIcon(
            backGroundColor: HexColor("#53B175"),
            foreGroundColor: HexColor("#53B175"),
            label: "Add All To Cart",
            onTap: () {}),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Favourite",
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey,
            height: 0.5,
          ),
        ),
      ),
      body: ListView(
        children: const [
          ItemFavouriteCustom(
            assetImage: 'sprite',
            itemName: 'Sprite Can',
            sizeItem: '325ml, Price',
            priceItem: '1.50',
          ),
          ItemFavouriteCustom(
            assetImage: 'coke',
            itemName: 'Diet Coke ',
            sizeItem: '355ml, Price',
            priceItem: '1.99',
          ),
          ItemFavouriteCustom(
            assetImage: 'apple_juice',
            itemName: 'Apple & Grape Juice',
            sizeItem: '2l, Price',
            priceItem: '15.50',
          ),
          ItemFavouriteCustom(
            assetImage: 'cola',
            itemName: 'Coca Cola Can',
            sizeItem: '325ml, Price',
            priceItem: '4.99',
          ),
          ItemFavouriteCustom(
            assetImage: 'pepsi',
            itemName: 'Pepsi Can',
            sizeItem: '330ml, Price',
            priceItem: '4.99',
          ),
          ItemFavouriteCustom(
            assetImage: 'sprite',
            itemName: 'Sprite Can',
            sizeItem: '325ml, Price',
            priceItem: '1.50',
          ),
        ],
      ),
    );
  }
}
