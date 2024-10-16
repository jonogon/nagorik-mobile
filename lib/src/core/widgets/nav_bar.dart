import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../gen/assets.gen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (int index) {
          widget.navigationShell.goBranch(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: _icon((
              active: Assets.icons.navBar.homeFilled,
              inactive: Assets.icons.navBar.home,
            ), 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _icon((
              active: Assets.icons.navBar.mapFilled,
              inactive: Assets.icons.navBar.map,
            ), 1),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: _icon((
              active: Assets.icons.navBar.addFilled,
              inactive: Assets.icons.navBar.add,
            ), 2),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: _icon((
              active: Assets.icons.navBar.bellFilled,
              inactive: Assets.icons.navBar.bell,
            ), 3),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: _icon((
              active: Assets.icons.navBar.userFilled,
              inactive: Assets.icons.navBar.user
            ), 4),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  SvgPicture _icon(
    ({SvgGenImage active, SvgGenImage inactive}) icon,
    int index,
  ) {
    SvgGenImage image = widget.navigationShell.currentIndex == index
        ? icon.active
        : icon.inactive;
    return image.svg();
  }
}
