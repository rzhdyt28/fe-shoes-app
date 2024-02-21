import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Checkout Success',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        color: backgroundColor4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            const SizedBox(height: 20),
            Text(
              'You made a transaction',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(height: 12),
            Text(
              'Stay at home while we\n prepare your dream shoes',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: defaultMargin),
            TextButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/home');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(primaryColor),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size(190, 44),
                ),
              ),
              child: Container(
                color: primaryColor,
                child: Text(
                  'Order Other Shoes',
                  style: primaryTextStyle,
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/cart');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(backgroundColor3),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size(190, 44),
                ),
              ),
              child: Text(
                'View My Order',
                style: primaryTextStyle,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor4,
      appBar: header(),
      body: content(),
    );
  }
}
