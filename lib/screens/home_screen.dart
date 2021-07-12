import 'package:alquiler/components/appbar1.dart';
import 'package:alquiler/screens/settings_screen.dart';
import 'package:alquiler/utils/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  static const ROUTE_ID = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.settings),
      //       onPressed: () async {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) {
      //           return const SettingsScreen();
      //         }));
      //       },
      //     ),
      //   ],
      // ),

      // appBar: IAppBar(
      //   height: 120,
      //   text: 'Principal 11',
      //   onPress: () async {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) {
      //       return const SettingsScreen();
      //     }));
      //   },
      //   prefixIcon: Icons.settings,
      //   color: Colors.amber,
      // ),
      appBar: IAppBar(
        height: 120,
        color: context.watch<AppSettings>().appColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
                child: Text(
              'HOME',
              textAlign: TextAlign.center,
            )),
            IconButton(
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SettingsScreen();
                  }));
                },
                icon: const Icon(Icons.settings)),
          ],
        ),
      ),

      body: Container(
        color: context.watch<AppSettings>().appColor,
      ),
    );
  }
}
