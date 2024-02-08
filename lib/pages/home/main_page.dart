import 'package:flutter/material.dart';
import 'package:kutsu/pages/home/chat_page.dart';
import 'package:kutsu/pages/home/home_page.dart';
import 'package:kutsu/pages/home/profile_page.dart';
import 'package:kutsu/pages/home/wishlist_page.dart';
import 'package:kutsu/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        shape: const CircleBorder(eccentricity: 0),
        child: Image.asset('assets/icon_cart.png', width: 20),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          color: backgroundColor4,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: NavigationBar(
            selectedIndex: currentIndex,
            onDestinationSelected: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            indicatorColor: backgroundColor3,
            backgroundColor: backgroundColor4,
            destinations: [
              NavigationDestination(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : greyButtonColor,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Image.asset(
                  'assets/icon_chat.png',
                  width: 20,
                  color: currentIndex == 1 ? primaryColor : greyButtonColor,
                ),
                label: 'Chat',
              ),
              NavigationDestination(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 20,
                  color: currentIndex == 2 ? primaryColor : greyButtonColor,
                ),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 18,
                  color: currentIndex == 3 ? primaryColor : greyButtonColor,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WishlistPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      bottomNavigationBar: customBottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: body(),
    );
  }
}
