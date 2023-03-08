import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneakerstore/main.dart';
import 'package:sneakerstore/pages/home/home_page.dart';
import 'package:sneakerstore/pages/home/profile_page.dart';
import 'package:sneakerstore/pages/home/wishlist_page.dart';
import 'package:sneakerstore/theme.dart';

import 'chat_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1Color,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: Center(
        child: mainContent(),
      ),
    );
  }

  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: secondaryColor,
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
    );
  }

  Widget bottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
            onTap: (value){
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: bg4NavColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 21,
                      color: currentIndex == 0 ? primaryColor : Colors.grey,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_chat.png',
                      width: 20,
                      color: currentIndex == 1 ? primaryColor : Colors.grey,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_wishlist.png',
                      width: 20,
                      color: currentIndex == 2 ? primaryColor : Colors.grey,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_profile.png',
                      width: 18,
                      color: currentIndex == 3 ? primaryColor : Colors.grey,
                    ),
                  ),
                  label: ''),
            ]),
      ),
    );
  }

  Widget mainContent(){
    switch(currentIndex){
      case 0:
        return HomePage();
        break;
      case 1:
        return ChatPage();
        break;
      case 2:
        return WishlistPage();
        break;
      case 3:
        return ProfilePage();
        break;

        default:
          return HomePage();
    }
  }
}
