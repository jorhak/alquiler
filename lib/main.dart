import 'package:alquiler/utils/app_settings.dart';
import 'package:alquiler/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const HomeApp(),
  );
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppSettings(),
        ),
      ],
      child: MaterialApp(
        title: 'Demo Alquiler',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.green,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        // home: const LoginScreen(),
        routes: Routes.routes(),
        initialRoute: Routes.initialRoute(),
      ),
    );
  }
}
