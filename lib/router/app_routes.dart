import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
   /*  MenuOptions(
        route: 'home',
        name: 'Home screen',
        icon: Icons.home,
        screen: const HomeScreen()), */
    MenuOptions(
        route: 'listview1',
        icon: Icons.list,
        name: 'List view1 screen',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listview2',
        name: 'List view2 screen',
        icon: Icons.line_style_sharp,
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'card',
        name: 'Card screen',
        icon: Icons.card_giftcard,
        screen: const CardScreen()),
    MenuOptions(
        route: 'alert',
        name: 'Alert screen',
        icon: Icons.warning,
        screen: const AlertScreen()),
    MenuOptions(
        route: 'avatar',
        name: 'Avatar screen',
        icon: Icons.supervised_user_circle_outlined,
        screen: const AvatarScreen()),
    MenuOptions(
        route: 'animated',
        name: 'Animated screen',
        icon: Icons.animation,
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'input',
        name: 'Input screen',
        icon: Icons.input_outlined,
        screen: const InputScreen()),
    MenuOptions(
        route: 'slider',
        name: 'Slider screen',
        icon: Icons.slideshow,
        screen: const SliderScreen()),
    MenuOptions(
        route: 'listbuilder',
        name: 'InfiniteScroll and Refresh',
        icon: Icons.screen_lock_landscape,
        screen: const ListViewBuilderScreen()),
  ];

/*   static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; */

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context)=> const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
