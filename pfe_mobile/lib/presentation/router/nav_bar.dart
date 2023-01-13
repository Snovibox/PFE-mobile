import 'package:flutter/material.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';


class NavBar extends StatefulWidget{
  // ignore: prefer_typing_uninitialized_variables
  final navigatorKey;

  const NavBar({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
   int _selectedIndex = 0;
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
      
      switch (index) {
        case 0 :
          widget.navigatorKey.currentState.pushNamed('/category');
          break;
        case 1 :
          widget.navigatorKey.currentState.pushNamed('/search');
          break;
        case 2 :
          widget.navigatorKey.currentState.pushNamed('/favorite');
          break;
        case 3 :
          widget.navigatorKey.currentState.pushNamed('/account');
          break;
        default:
          widget.navigatorKey.currentState.pushNamed('/');
      }
    }
    // Mialy razafindrazaka
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: myGreen,
      unselectedItemColor: Theme.of(context).iconTheme.color,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      enableFeedback: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.category_outlined), activeIcon: Icon(Icons.category,) , label:"category"),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined), activeIcon: Icon(Icons.search,) , label:"search"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), activeIcon: Icon(Icons.favorite,) , label:"like"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person,) , label:"account"),
      ],
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,

    );
  }
}