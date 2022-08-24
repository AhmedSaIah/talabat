import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talabat/screens/home_page.dart';

import 'constants/app_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List<Widget> _navbarItems = [
    const HomePage(),
    const Text("search"),
    const Text("account")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navbarItems[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
               // Navigator.pop(context);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/talabat-seeklogo.com.svg",
                  color: AppColors.primary,
                  height: 30,
                ),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: "Search",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                label: "Account",
              ),
            ]),
    );
  }
}
