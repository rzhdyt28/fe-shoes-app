import 'package:fe_shoes_market_app/providers/auth/auth_provider.dart';
import 'package:fe_shoes_market_app/theme.dart';
import 'package:fe_shoes_market_app/widgets/loading_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSign() async {
      setState(() {
        isLoading = true;
      });
      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal Register!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
      setState(() {
        isLoading = false;
      });
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Login',
            style:
                primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Sign In to Continue',
            style: subtitleTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          )
        ]),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: priceTextStyle,
                      controller: emailController,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icon_password.png',
                        width: 17,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: TextFormField(
                        style: priceTextStyle,
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: subtitleTextStyle,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ));
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: handleSign,
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            'Sign In',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget footer(context) {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: subtitleTextStyle.copyWith(fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                // cara dari course
                Navigator.pushNamed(context, '/sign-up');
                // dari gugel
                // Navigator.of(context).pushNamed('/sign-up');
              },
              child: Text(
                'Sign Up',
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor1,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              isLoading ? LoadingButton() : signInButton(),
              const Spacer(),
              footer(context)
            ],
          ),
        ));
  }
}
