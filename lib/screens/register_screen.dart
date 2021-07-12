import 'package:alquiler/components/btn.dart';
import 'package:alquiler/components/tf.dart';
import 'package:alquiler/utils/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const ROUTE_ID = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _ciController = TextEditingController();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoController = TextEditingController();
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar'),
        centerTitle: true,
        backgroundColor: context.watch<AppSettings>().appColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TF(
              controller: _ciController,
              hintText: 'CI',
              helpText: 'CI',
            ),
            TF(
              controller: _nombreController,
              hintText: 'NOMBRE',
              helpText: 'NOMBRE',
            ),
            TF(
              controller: _apellidoController,
              hintText: 'APELLIDO',
              helpText: 'APELLIDO',
            ),
            TF(
              controller: _usuarioController,
              hintText: 'USUARIO',
              helpText: 'USUARIO',
            ),
            TF(
              controller: _contrasenaController,
              hintText: 'CONTRASEÑA',
              helpText: 'CONTRASEÑA',
              isPassword: true,
            ),
            Row(
              children: [
                Expanded(
                  child: BTN(
                    onPress: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                    text: 'GUARDAR',
                    color: context.watch<AppSettings>().appColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
