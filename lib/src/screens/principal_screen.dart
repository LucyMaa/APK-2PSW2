import 'package:flutter/material.dart';
import 'package:sw1/src/screens/login_screen.dart';
import 'package:sw1/src/screens/registrarse_screen.dart';
import 'package:sw1/src/settings_user/preferencias_usuario.dart';

class PrincipalScreen extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  static const routeName = '/principal-screen';

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = PrincipalScreen.routeName;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xffffffff),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/images/flojo2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Bienvenido a SME',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Regístrate',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  
                  padding: const EdgeInsets.all(15),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(RegistrarseScreen.routeName);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '¿Tienes una cuenta?',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(LoginScreen.routeName);
                      },
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
