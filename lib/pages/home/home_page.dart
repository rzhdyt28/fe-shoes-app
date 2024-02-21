import 'package:fe_shoes_market_app/pages/home/profile/profile_page.dart';
import 'package:fe_shoes_market_app/widgets/product/products_card.dart';
import 'package:fe_shoes_market_app/widgets/product/products_tile.dart';
import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget Header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "halo Alex muxtar",
                    style: primaryTextStyle.copyWith(
                        fontSize: 22, fontWeight: semiBold),
                  ),
                  // sub name
                  Text(
                    "@alexfrankestin",
                    style: secondaryTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/image_profile.png'))),
              ),
            ),
          ],
        ),
      );
    }

    // Widget Text Category
    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryColor),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Trainning',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Basket Ball',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Cassuals',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Widget Popular Product Title
    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
        ),
      );
    }

    // Widget Popular Products
    Widget popularProduct() {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              const Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              )
            ],
          ),
        ),
      );
    }

    // Widget New Arrivals Product Title
    Widget newArrivalProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
        ),
      );
    }

    // Widget New Arrivals
    Widget newArrivals() {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        child: const Column(children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ]),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProduct(),
        newArrivalProductsTitle(),
        newArrivals()
      ],
    );
  }
}
