import 'package:alquiler/screens/home_screen.dart';
import 'package:alquiler/screens/login_screen.dart';
import 'package:alquiler/screens/register_screen.dart';
import 'package:alquiler/screens/settings_screen.dart';

class Routes {
  static routes() {
    return {
      LoginScreen.ROUTE_ID: (context) => const LoginScreen(),
      HomeScreen.ROUTE_ID: (context) => const HomeScreen(),
      SettingsScreen.ROUTE_ID: (context) => const SettingsScreen(),
      RegisterScreen.ROUTE_ID: (context) => const RegisterScreen(),
    };
  }

  static initialRoute() {
    return LoginScreen.ROUTE_ID;
  }

  static homeRoute() {
    return HomeScreen.ROUTE_ID;
  }
}
