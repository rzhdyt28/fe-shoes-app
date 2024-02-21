// import "package:fe_shoes_market_app/theme.dart";
import "package:fe_shoes_market_app/pages/home/chat/chat_page.dart";
import "package:fe_shoes_market_app/pages/home/home_page.dart";
import 'package:fe_shoes_market_app/pages/home/profile/profile_page.dart';
import 'package:fe_shoes_market_app/pages/home/wishlist/whishlist_page.dart';
import "package:fe_shoes_market_app/theme.dart";
import "package:flutter/material.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Halaman Sebelumnya
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Widget Float Button
    Widget cartButton() {
      return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FloatingActionButton(
          backgroundColor: secondaryColor,
          onPressed: () {
            Navigator.of(context).pushNamed('/cart');
          },
          child: Image.asset(
            'assets/icon_cart.png',
            width: 20,
          ),
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: backgroundColor4,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          child: BottomNavigationBar(
            // current page
            currentIndex: currentPageIndex,
            onTap: (value) {
              setState(() {
                // print('halaman ${value}');
                currentPageIndex = value;
              });
            },
            backgroundColor: transparentColor,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 6,
                    bottom: 0,
                  ),
                  child: Image.asset('assets/icon_home.png',
                      width: 21,
                      color: currentPageIndex == 0
                          ? primaryColor
                          : Colors.grey[800]),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(
                      top: 6,
                      bottom: 0,
                    ),
                    child: Image.asset('assets/icon_chat.png',
                        width: 20,
                        color: currentPageIndex == 1
                            ? primaryColor
                            : Colors.grey[800]),
                  ),
                  label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(
                      top: 6,
                      bottom: 0,
                    ),
                    child: Image.asset('assets/icon_wishlist.png',
                        width: 20,
                        color: currentPageIndex == 2
                            ? primaryColor
                            : Colors.grey[800]),
                  ),
                  label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(
                      top: 6,
                      bottom: 0,
                    ),
                    child: Image.asset('assets/icon_profile.png',
                        width: 18,
                        color: currentPageIndex == 3
                            ? primaryColor
                            : Colors.grey[800]),
                  ),
                  label: 'Profile'),
            ],
            useLegacyColorScheme: true,
          ),
        ),
      );
    }

    Widget body() {
      switch (currentPageIndex) {
        case 0:
          return const HomePage();
        // break;
        case 1:
          return const ChatPage();
        // break;
        case 2:
          return const WishlistPage();
        // break;
        case 3:
          return const ProfilePage();
        // break;
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:
          currentPageIndex == 0 ? backgroundColor1 : backgroundColor3,
      // float button
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Button Navigation
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
