import 'package:app_localizations/Routes/RoutesName.dart';
import 'package:app_localizations/views_/Home_view.dart';
import 'package:app_localizations/views_/Login_view.dart';
import 'package:app_localizations/views_/SignUp_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> generate_Route(RouteSettings local) {
    switch (local.name) {
      case Routesname.home:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => HomeView(),
          );
        }
        
      case Routesname.signup:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => SignUpView(),
          );
        }

      case Routesname.login:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => LoginView(),
          );
        }

      default:
        {
          return MaterialPageRoute(
            builder:
                (_) => Scaffold(
                  body: Center(child: Text('There is no useful route')),
                ),
          );
        }
    }
  }
}
