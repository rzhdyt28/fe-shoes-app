import 'package:fe_shoes_market_app/theme.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/product');
      },
      child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 35,
          ),
          child: ClipRRect(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 125,
                    height: 125,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Football',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Predator 20.3 Firm Ground',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Rp 350.000,00',
                        style: priceTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
