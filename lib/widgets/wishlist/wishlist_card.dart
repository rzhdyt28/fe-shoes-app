import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes8.png',
              width: 60,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Predator 20.3 Firm Ground Boots ',
                    style: primaryTextStyle.copyWith(fontWeight: semiBold)),
                Text('Rp 150.000,00', style: priceTextStyle),
              ],
            ),
          ),
          Image.asset(
            'assets/button_wishlist_blue.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
