import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                    Text('Terrex Urban Low ', style: primaryTextStyle),
                    Text('Rp 350.000,00', style: priceTextStyle),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '1 Items',
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
