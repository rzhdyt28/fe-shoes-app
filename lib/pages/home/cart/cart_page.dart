import 'package:fe_shoes_market_app/widgets/cart/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget Header
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: primaryTextColor,
          ),
        ),
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        centerTitle: true,
      );
    }

    Widget emptyCart() {
      return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            const SizedBox(height: 20),
            Text(
              'Opss! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(height: 12),
            Text('Let\'s find your favorite shoes', style: secondaryTextStyle),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Container(
                width: 152,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Center(
                  heightFactor: 10,
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: defaultMargin),
        child: ListView(
          children: const [
            CartTile(),
            CartTile(),
          ],
        ),
      );
    }

    Widget customButtonNav() {
      return SizedBox(
        height: 165,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal', style: primaryTextStyle),
                  Text('Rp 350.000,00', style: priceTextStyle),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Divider(
              color: secondaryColor,
              thickness: 0.5,
            ),
            const SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: primaryColor),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/checkout');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: priceTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customButtonNav(),
    );
  }
}
