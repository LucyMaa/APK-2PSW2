import 'package:flutter/material.dart';
import 'package:sw1/src/Clinica/clinica_screen.dart';
import 'package:sw1/src/Doctor/doctor_screen.dart';
import 'package:sw1/src/chat/home_chat.dart';
import 'package:sw1/src/screens/detalles_screen.dart';
import 'package:sw1/src/screens/home_screen.dart';
import 'package:sw1/src/screens/menu_screen.dart';
import 'package:sw1/src/screens/perfil_screen.dart';
import 'package:sw1/src/screens/principal_screen.dart';
import 'package:sw1/src/settings_user/audio_settings.dart';
import 'package:sw1/src/settings_user/preferencias_usuario.dart';
import 'package:sw1/src/screens/reservar_screen.dart';
import 'package:sw1/src/screens/detalles_reserva.dart';

class MenuWidget extends StatelessWidget {
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          // child: Container(),
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('assets/images/menu-img.jpg'),
          //         fit: BoxFit.cover)),
          // ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 25,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile-user.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    '${prefs.nombreCompleto}',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${prefs.email}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.black),
            title: Text(
              'Inicio',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () =>
                Navigator.pushReplacementNamed(context, MenuScreen.routeName),
          ),
          ListTile(
            leading: Icon(Icons.speed, color: Colors.black),
            title: Text(
              'Monitoreo',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () =>
                Navigator.pushReplacementNamed(
                      context, HomeScreen.routeName),
          ),
          ListTile(
            leading: Icon(Icons.table_chart, color: Colors.black),
            title: Text(
              'Evaluacion',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () =>
                Navigator.pushReplacementNamed(
                      context, DetallesScreen.routeName),
          ),
          /*ListTile(
              leading: Icon(Icons.settings_voice, color: Colors.black),
              title: Text('Audio Chat', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, AudioSettings.routeName);
              }),
              (prefs.rol == 'Admin')
              ? ListTile(
                  leading: Icon(Icons.add_chart_sharp, color: Colors.black),
                  title: Text('Reservar Cita',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, ReservarScreen.routeName);
                  })
              : Container(),

          (prefs.rol == 'Admin')
              ? ListTile(
                  leading: Icon(Icons.add_box, color: Colors.black),
                  title: Text('Crear Clinica',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, ClinicaScreen.routeName);
                  })
              : Container(),
              (prefs.rol == 'Admin')
                  ? ListTile(
                      leading:
                          Icon(Icons.account_box_rounded, color: Colors.black),
                      title: Text('Crear Doctor',
                          style: TextStyle(color: Colors.black)),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, DoctorScreen.routeName);
                      })
                  : Container(),
                  
                  ListTile(
                      leading: Icon(Icons.settings, color: Colors.black),
                      title: Text('Settings',
                          style: TextStyle(color: Colors.black)),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, PerfilScreen.routeName);
                      }),*/
          ListTile(
              leading: Icon(Icons.block_sharp, color: Colors.black),
              title:
                  Text('Cerrar Sesion', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, PrincipalScreen.routeName);
              }),
        ],
      ),
    );
  }
}
