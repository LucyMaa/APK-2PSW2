import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sw1/src/screens/menu_screen.dart';
import 'package:http/http.dart' as http;
import 'package:sw1/src/screens/principal_screen.dart';
import 'package:sw1/src/settings_user/preferencias_usuario.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final prefs = new PreferenciasUsuario();

  final usuario = TextEditingController();
  final password = TextEditingController();

  String use = '';
  String pass = '';

  void validarDatos(context) async {
    use = usuario.text;
    pass = password.text;
    print(use);
    print(pass);
    var url = Uri.parse('https://projectsw2.herokuapp.com/api/singin');
    var response =
        await http.post(url, body: {'username': "$use", 'password': "$pass"});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      Map user = json.decode(response.body);
      user = user["user"];
      print(user);
      prefs.userName = user["username"];
      prefs.nombreCompleto = user["name"];
      prefs.email = user["email"];
      prefs.ci = user["ci"];
      prefs.rol = user["rol"];
      Navigator.pushReplacementNamed(context, MenuScreen.routeName);
      print(prefs.ci);
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Alerta'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text('El correo o contraseña es incorrecta'),
                  ],
                ),
              ),
              actions: [
                FlatButton(
                    child: Text('Aceptar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = LoginScreen.routeName;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // title: Text('Login'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacementNamed(context, PrincipalScreen.routeName);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                // shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('assets/images/flojo2.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
            ),
            SizedBox(
              height: 30,
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
              height: 60,
            ),
            TextField(
              controller: usuario,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Nombre de usuario...',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              obscureText: true,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Contraseña',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            FlatButton(
              child: Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.all(15),
              textColor: Colors.white,
              onPressed: () {
                validarDatos(context);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => MenuScreen(),
                //     ));
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
