import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget header(context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor1,
      elevation: 1,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/image_profile.png',
                  width: 64,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo, Alex',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '@alexkeinn',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // BuildContext context;
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-in', (route) => false);
                },
                child: Image.asset(
                  'assets/button_exit.png',
                  width: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String text) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: secondaryTextStyle,
          ),
          const Icon(
            Icons.chevron_right,
            color: secondaryTextColor,
          )
        ],
      ),
    );
  }

  Widget contentProfile(context) {
    return Expanded(
      child: Container(
        color: backgroundColor3,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        // margin: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Account',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed("/edit-profile");
              },
              child: menuItem('Edit Profile'),
            ),
            menuItem('Your Orders'),
            menuItem('Help'),
            const SizedBox(height: 30),
            Text(
              'General',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            menuItem('Privacy & Policy'),
            menuItem('Term of Service'),
            menuItem('Rate App'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(context),
        contentProfile(context),
      ],
    );
  }
}
