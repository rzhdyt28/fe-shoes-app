import 'package:fe_shoes_market_app/pages/auth/signin.dart';
import 'package:fe_shoes_market_app/pages/auth/signup.dart';
import 'package:fe_shoes_market_app/pages/home/cart/cart_page.dart';
import 'package:fe_shoes_market_app/pages/home/cart/checkout/checkout_page.dart';
import 'package:fe_shoes_market_app/pages/home/cart/checkout/checkout_success.dart';
import 'package:fe_shoes_market_app/pages/home/chat/detail_chat.dart';
import 'package:fe_shoes_market_app/pages/home/main_page.dart';
import 'package:fe_shoes_market_app/pages/home/product/product_page.dart';
import 'package:fe_shoes_market_app/pages/home/profile/edit_profile.dart';
import 'package:fe_shoes_market_app/pages/splash_page.dart';
import 'package:fe_shoes_market_app/providers/auth/auth_provider.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
// import 'theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        routes: {
          // Auth
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => SignUpPage(),

          // Main Page
          '/': (context) => const SplashPage(),
          '/home': (context) => const MainPage(),
          '/detail-chat': (context) => const DetailChat(),
          '/edit-profile': (context) => const EditProfile(),
          '/product': (context) => const ProductPage(),

          '/cart': (context) => const CartPage(),
          '/checkout': (context) => const CheckoutPage(),
          '/checkout-success': (context) => const CheckoutSuccess(),
        },
      ),
    );
  }
}
