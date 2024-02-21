import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, bottom: 10),
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
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Container(
                      width: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: primaryColor),
                      child: Text(
                        '+',
                        style: primaryTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Container(
                      width: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: backgroundColor3),
                      child: Text(
                        '-',
                        style: primaryTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove.png',
                width: 10,
              ),
              const SizedBox(width: 4),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
