import 'package:fe_shoes_market_app/widgets/chat/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Header Title
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
        elevation: 1,
        automaticallyImplyLeading: false,
      );
    }

    // Empty Chat
    // Widget emptyChat() {
    //   return Expanded(
    //     child: Container(
    //         color: backgroundColor3,
    //         width: double.infinity,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Image.asset(
    //               'assets/icon_headset.png',
    //               width: 80,
    //             ),
    //             const SizedBox(height: 20),
    //             Text(
    //               'Opss no message yet?',
    //               style: primaryTextStyle.copyWith(
    //                   fontSize: 16, fontWeight: medium),
    //             ),
    //             const SizedBox(
    //               height: 16,
    //             ),
    //             Text(
    //               'You have never done a transaction',
    //               style: secondaryTextStyle,
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             Container(
    //               height: 44,
    //               // color: primaryColor,
    //               child: TextButton(
    //                   onPressed: () {},
    //                   style: TextButton.styleFrom(
    //                       padding: const EdgeInsets.symmetric(
    //                           horizontal: 24, vertical: 10),
    //                       shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(20)),
    //                       backgroundColor: primaryColor),
    //                   child: Text(
    //                     'Explorer Store',
    //                     style: primaryTextStyle.copyWith(
    //                         fontSize: 16, fontWeight: medium),
    //                   )),
    //             ),
    //           ],
    //         )),
    //   );
    // }

    // Content Chat
    Widget contentChat() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: const [ChatTile()],
          ),
        ),
      );
    }

    return Column(
      children: [header(), contentChat()],
    );
  }
}
