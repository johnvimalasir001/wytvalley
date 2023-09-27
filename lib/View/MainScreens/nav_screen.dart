import 'package:flutter/material.dart';
import 'package:wytvalley/View/MainScreens/account_screen.dart';
import 'package:wytvalley/View/MainScreens/home_screen.dart';
import 'package:wytvalley/View/MainScreens/product_screen.dart';
import 'package:wytvalley/View/MainScreens/wallet_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedindex = 0;

  List pages = [
    const HomeScreen(),
    const ProductScreen(),
    const WalletScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedindex,
          selectedItemColor: Colors.yellow.shade800,
          unselectedItemColor: Colors.black54,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Products',
              icon: Icon(
                Icons.storefront_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Wallet',
              icon: Icon(
                Icons.wallet_travel_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(
                Icons.person_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: pages[selectedindex],
      ),
    );
  }
}
