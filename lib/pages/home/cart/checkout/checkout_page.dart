import 'package:fe_shoes_market_app/widgets/cart/checkout/checkout_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

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
          'Chcekout Details',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        centerTitle: true,
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: defaultMargin),
        child: ListView(
          children: [
            // List Item
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'List Items',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 12),
                  const CheckoutCard(),
                  const CheckoutCard(),
                  const CheckoutCard(),
                  const CheckoutCard(),
                ],
              ),
            ),

            // Address Details
            const SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: backgroundColor4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address Details',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  // Store Location
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_store_location.png',
                        width: 40,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Store Location',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          ),
                          Text('Adidas Core', style: primaryTextStyle),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/icon_line.png',
                      height: 30,
                    ),
                  ),
                  // Your Address
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_your_address.png',
                        width: 40,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Address',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          ),
                          Text(
                            'Jalan Dahlia 5 Jalan Dahlia 5',
                            style: primaryTextStyle,
                            maxLines: 2,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Payment
            const SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: backgroundColor4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Summary',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  // Product Quantity
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Quantity',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        '2 Items',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                  // Product Price
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Price',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Rp 700.000,00',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                  // Shipping
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Free',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Divider(
                    color: backgroundColor3,
                    thickness: 0.5,
                  ),
                  // Total
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: priceTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Rp 700.000,00',
                        style: priceTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget customBottomNav() {
      return Container(
        margin: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin),
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: primaryColor),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/checkout-success');
          },
          child: Text(
            'Checkout Now',
            style:
                primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
