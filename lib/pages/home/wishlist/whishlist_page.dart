import 'package:fe_shoes_market_app/widgets/wishlist/wishlist_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  // header
  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        'Favorite Shoes',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }

  // Empty Wishlist
  Widget emptyWishlist() {
    return Expanded(
      child: Container(
        color: backgroundColor3,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_wishlist.png',
              width: 74,
              height: 62,
              color: secondaryColor,
            ),
            const SizedBox(height: 23),
            Text(
              'You don\'t have dream shoes?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 24,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: Text('Explorer Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget contentWishlist() {
    return Expanded(
      child: Container(
        color: backgroundColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: const [
            WishlistCard(),
            WishlistCard(),
            WishlistCard(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        // emptyWishlist(),
        contentWishlist(),
      ],
    );
  }
}
