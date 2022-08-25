import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talabat/screens/home_page.dart';
import 'package:talabat/screens/search_screen.dart';
import 'package:talabat/screens/profile_screen.dart';
import 'constants/app_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List <Widget> _navbarItems = [
    const HomePage(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  void onTap(index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navbarItems[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Colors.grey,
            onTap: onTap,
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
                icon: Icon(
                  Icons.search_outlined,
                ),
                label: "Search",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                ),
                label: "Account",
              ),
            ]),
    );
  }
}
