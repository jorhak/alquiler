import 'package:alquiler/components/color_cell.dart';
import 'package:alquiler/components/link_btn.dart';
import 'package:alquiler/screens/login_screen.dart';
import 'package:alquiler/utils/app_settings.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const ROUTE_ID = 'settings_screen';
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<AppSettings>().appColor,
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Wrap(
              children: List<Widget>.generate(Constants.colors.length, (index) {
                return GestureDetector(
                  onTap: () {
                    context.read<AppSettings>().updateColor(index);
                  },
                  child: ColorCell(
                    color: Constants.colors[index],
                  ),
                );
              }),
            ),
            LINKBTN(
              text: 'Logout',
              onPress: () async {
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginScreen.ROUTE_ID, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
