import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = 0;
  bool isWishlist = false;

  List imagesShoes = [
    'assets/image_shoes2.png',
    'assets/image_shoes4.png',
    'assets/image_shoes6.png',
    'assets/image_shoes.png',
    'assets/image_shoes8.png',
    'assets/image_shoes5.png',
    'assets/image_shoes7.png',
    'assets/image_shoes3.png',
  ];

  List familiarImagesShoes = [
    'assets/image_shoes2.png',
    'assets/image_shoes4.png',
    'assets/image_shoes6.png',
    'assets/image_shoes.png',
    'assets/image_shoes8.png',
    'assets/image_shoes5.png',
    'assets/image_shoes7.png',
    'assets/image_shoes3.png',
  ];

  @override
  Widget build(BuildContext context) {
    // Modal Widget
    Future<void> showSuccessDialog() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) => SizedBox(
                width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                child: AlertDialog(
                  backgroundColor: backgroundColor3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.close,
                              color: primaryTextColor,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/icon_success.png',
                          width: 100,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Hurray',
                          style: primaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: semiBold),
                        ),
                        const SizedBox(height: 12),
                        Text('Item added successfully',
                            style: secondaryTextStyle),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).popAndPushNamed('/home');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width -
                                (8 * defaultMargin),
                            height: 44,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View My Cart',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 16, fontWeight: medium),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ));
    }

    // indicator header
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : subtitleColor,
        ),
      );
    }

    // Familiar ShoesCard
    Widget familiarShoesCard(String imageUrl) {
      return Container(
        height: 54,
        width: 54,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: imagesShoes
                .map(
                  (imagesShoes) => Image.asset(
                    imagesShoes,
                    width: double.infinity,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagesShoes.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    // Content Body
    Widget content() {
      // int index = -1;
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(defaultMargin),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            // Header Content
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERREX URBAN LOW',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: subtitleTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWishlist = !isWishlist;
                      });
                      if (isWishlist) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: secondaryColor,
                            content: Text('Has been added to the Whitelist',
                                textAlign: TextAlign.center),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: alertColor,
                            content: Text('Has been removed from the Whitelist',
                                textAlign: TextAlign.center),
                          ),
                        );
                      }
                    },
                    child: Image.asset(
                      isWishlist
                          ? 'assets/button_wishlist_blue.png'
                          : 'assets/button_wishlist.png',
                      width: 46,
                    ),
                  )
                ],
              ),
            ),

            // Price Content
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price Starts From',
                    style: primaryTextStyle,
                  ),
                  Text(
                    'Rp 350.000,00',
                    style: priceTextStyle,
                  )
                ],
              ),
            ),

            // Description Content
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute. Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                    style: secondaryTextStyle,
                  ),
                ],
              ),
            ),

            // Familiar Content
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Familiar Shoes',
                    style: primaryTextStyle,
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: familiarImagesShoes
                          .map(
                            (image) => familiarShoesCard(image),
                          )
                          .toList(),
                      //     .map((image) {
                      //   index++;
                      //   return Container(
                      //     margin: EdgeInsets.only(
                      //         left: index == 0 ? defaultMargin : 0),
                      //     child: familiarShoesCard(image),
                      //   );
                      // }).toList(),
                    ),
                  )
                ],
              ),
            ),

            // Button Content
            Container(
              padding: EdgeInsets.only(top: defaultMargin),
              width: double.infinity,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/detail-chat');
                    },
                    child: Container(
                      width: 54,
                      height: 54,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/button_chat.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 54,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                        onPressed: () {
                          showSuccessDialog();
                        },
                        child: Text(
                          'Add to Cart',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        color: backgroundColor6,
        child: ListView(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
