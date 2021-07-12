import 'package:alquiler/components/btn.dart';
import 'package:alquiler/components/link_btn.dart';
import 'package:alquiler/components/tf.dart';
import 'package:alquiler/screens/home_screen.dart';
import 'package:alquiler/screens/register_screen.dart';
import 'package:alquiler/utils/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const ROUTE_ID = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
        centerTitle: true,
        backgroundColor: context.watch<AppSettings>().appColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TF(
                controller: _emailController,
                hintText: 'Email',
                helpText: 'Email',
                prefixIcon: Icons.email,
              ),
              TF(
                controller: _passwordController,
                hintText: 'Password',
                helpText: 'Password',
                isPassword: true,
                prefixIcon: Icons.lock_open,
              ),
              Row(
                children: [
                  Expanded(
                    child: BTN(
                      onPress: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomeScreen();
                        }));
                      },
                      text: 'LOGIN',
                      color: context.watch<AppSettings>().appColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: BTN(
                      onPress: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterScreen();
                        }));
                      },
                      text: 'REGISTRAR',
                      color: context.watch<AppSettings>().appColor,
                    ),
                  ),
                ],
              ),
              const LINKBTN(
                text: 'Forgot Password?',
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
