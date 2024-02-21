import 'package:fe_shoes_market_app/pages/home/chat/detail_chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({super.key});

  @override
  Widget build(BuildContext context) {
    // Appbar
    PreferredSizeWidget header() {
      return PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: backgroundColor1,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.chevron_left, color: primaryTextColor),
            ),
            title: Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo_online.png',
                  width: 50,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoes Store',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                    Text(
                      'Online',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: light),
                    ),
                  ],
                ),
              ],
            ),
          ));
    }

    // Preview Item
    Widget previewItem() {
      return Container(
        width: 225,
        height: 74,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: backgroundColor5,
            border: Border.all(color: primaryColor)),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/image_shoes8.png',
                  width: 50,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Court Vision ',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Rp 350.000,00',
                      style: priceTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/button_close.png',
                width: 22,
              ),
            ],
          ),
        ),
      );
    }

    // chat input
    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Preview Item
            previewItem(),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: backgroundColor4),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type Message ...',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Image.asset(
                  'assets/button_send.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    // Content Chat
    Widget contentChat() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: const [
          ChatBubble(
            isSender: true,
            hasProduct: true,
            textChat: 'Hi, This item is still available?',
          ),
          ChatBubble(
            isSender: false,
            hasProduct: false,
            textChat:
                'Good night, This item is only available in size 42 and 43',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: contentChat(),
      bottomNavigationBar: chatInput(),
    );
  }
}
