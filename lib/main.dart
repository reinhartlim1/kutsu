import 'package:flutter/material.dart';
import 'package:kutsu/pages/home/cart_page.dart';
import 'package:kutsu/pages/home/checkout_page.dart';
import 'package:kutsu/pages/home/checkout_success_page.dart';
import 'package:kutsu/pages/home/detail_chat_page.dart';
import 'package:kutsu/pages/home/edit_profile_page.dart';
import 'package:kutsu/pages/home/main_page.dart';
import 'package:kutsu/pages/sign_in_page.dart';
import 'package:kutsu/pages/sign_up_page.dart';
import 'package:kutsu/pages/splash_page.dart';
import 'package:kutsu/providers/auth_provider.dart';
import 'package:kutsu/providers/cart_provider.dart';
import 'package:kutsu/providers/product_provider.dart';
import 'package:kutsu/providers/transaction_provider.dart';
import 'package:kutsu/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';

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
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
