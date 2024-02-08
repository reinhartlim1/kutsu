import 'package:flutter/material.dart';
import 'package:kutsu/pages/home/cart_page.dart';
import 'package:kutsu/pages/home/checkout_page.dart';
import 'package:kutsu/pages/home/checkout_success_page.dart';
import 'package:kutsu/pages/home/detail_chat_page.dart';
import 'package:kutsu/pages/home/edit_profile_page.dart';
import 'package:kutsu/pages/home/main_page.dart';
import 'package:kutsu/pages/home/product_page.dart';
import 'package:kutsu/pages/sign_in_page.dart';
import 'package:kutsu/pages/sign_up_page.dart';
import 'package:kutsu/pages/splash_page.dart';

void main () => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/detail-chat': (context) => const DetailChatPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/product': (context) => const ProductPage(),
        '/cart': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/checkout-success': (context) => const CheckoutSuccessPage(),
      },
    );
  }
}
