import 'package:flutter/material.dart';
import 'package:fe_shoes_market_app/theme.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close, color: primaryTextColor),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
              color: primaryColor,
            ),
          )
        ],
      );
    }

    Widget nameInput() {
      return Container(
        padding: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle,
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Alex keinnzal',
                hintStyle: primaryTextStyle,
                fillColor: Colors.pinkAccent,
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        padding: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle,
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '@alexkeinn',
                hintStyle: primaryTextStyle,
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        padding: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: secondaryTextStyle,
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'alex.kein@gmail.com',
                hintStyle: primaryTextStyle,
                fillColor: Colors.pinkAccent,
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        // color: Colors.brown[500],
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
