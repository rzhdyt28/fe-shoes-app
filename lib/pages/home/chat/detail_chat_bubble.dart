import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {super.key,
      this.hasProduct = true,
      this.isSender = false,
      this.textChat = ''});
  final String textChat;
  final bool isSender;
  final bool hasProduct;

  // preview product
  Widget previewProduct() {
    return Container(
      width: 246,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 12 : 0),
            topRight: Radius.circular(isSender ? 0 : 12),
            bottomLeft: const Radius.circular(12),
            bottomRight: const Radius.circular(12),
          ),
          color: isSender ? backgroundColor5 : backgroundColor4),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/image_shoes7.png',
                  width: 70,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COURT VISION 2.0 SHOES',
                      style: primaryTextStyle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Rp 350.000,00',
                      style: priceTextStyle,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: primaryColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(
                  'Add to Cart',
                  style: purpleTextStyle,
                ),
              ),
              const SizedBox(width: 8),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: primaryColor,
                  side: const BorderSide(color: primaryColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(
                  'Buy Now',
                  style: primaryTextStyle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          // Preview Product
          hasProduct ? previewProduct() : const SizedBox(),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isSender ? 12 : 0),
                        topRight: Radius.circular(isSender ? 0 : 12),
                        bottomLeft: const Radius.circular(12),
                        bottomRight: const Radius.circular(12),
                      ),
                      color: isSender ? backgroundColor5 : backgroundColor4),
                  child: Text(
                    textChat,
                    style: primaryTextStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
