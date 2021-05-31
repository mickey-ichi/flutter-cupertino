part of 'router.dart';

class HandlerRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

      /// Out Auth
      case RouteOutAuth.Splash:
        return CupertinoPageRoute(
          builder: (_) => Container(),
          settings: settings,
        );
      case RouteOutAuth.Login:
        return CupertinoPageRoute(
          builder: (_) => Container(),
          settings: settings,
        );

      /// In Auth
      case RouteMain.Home:
        return CupertinoPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case RouteMain.Profile:
        return CupertinoPageRoute(
          builder: (_) => ProfileScreen(),
          settings: settings,
        );
    }
    return CupertinoPageRoute(
      builder: (_) => Container(),
      settings: settings,
    );
  }
}
