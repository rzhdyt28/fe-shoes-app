import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Shoes Store',
                        style: primaryTextStyle.copyWith(
                            fontSize: 15, fontWeight: medium),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Halo kk, apakah barang tersebut masih ada ?',
                        style: secondaryTextStyle.copyWith(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(thickness: 1, color: subtitleColor)
          ],
        ),
      ),
    );
  }
}
