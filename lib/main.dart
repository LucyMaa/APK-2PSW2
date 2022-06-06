// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sw1/src/Clinica/clinica_screen.dart';
import 'package:sw1/src/Clinica/detalles_clinica.dart';
import 'package:sw1/src/Doctor/detalles_doctor.dart';
import 'package:sw1/src/Doctor/doctor_screen.dart';
import 'package:sw1/src/chat/home_chat.dart';
import 'package:sw1/src/screens/blanco_screen.dart';
import 'package:sw1/src/screens/detalles_reserva.dart';
import 'package:sw1/src/screens/detalles_screen.dart';
import 'package:sw1/src/screens/home_screen.dart';
import 'package:sw1/src/screens/login_screen.dart';
import 'package:sw1/src/screens/menu_screen.dart';
import 'package:sw1/src/screens/perfil_screen.dart';
import 'package:sw1/src/screens/principal_screen.dart';
import 'package:sw1/src/screens/registrarse_screen.dart';
import 'package:sw1/src/screens/reservar_screen.dart';
import 'package:sw1/src/settings_user/audio_settings.dart';
import 'package:sw1/src/settings_user/preferencias_usuario.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  static const MaterialColor kPrimaryColor = const MaterialColor(
  0xFF000000,
  const <int, Color>{
    50: const Color(0xFF000000),
    100: const Color(0xFF000000),
    200: const Color(0xFF000000),
    300: const Color(0xFF000000),
    400: const Color(0xFF000000),
    500: const Color(0xFF000000),
    600: const Color(0xFF000000),
    700: const Color(0xFF000000),
    800: const Color(0xFF000000),
    900: const Color(0xFF000000),
  },
);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      initialRoute: prefs.ultimaPagina,
      routes: {
        DetallesDoctor.routeName:(ctx)=> DetallesDoctor(),
        DetallesClinica.routeName:(ctx)=> DetallesClinica(),
        PrincipalScreen.routeName:(ctx)=> PrincipalScreen(),
        DoctorScreen.routeName:(ctx) => DoctorScreen(),
        ClinicaScreen.routeName:(ctx)=> ClinicaScreen(),
        AudioSettings.routeName: (ctx)=> AudioSettings(),
        HomeChat.routeName: (ctx) => HomeChat(),
        MenuScreen.routeName: (ctx) => MenuScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        DetallesScreen.routeName: (ctx) => DetallesScreen(),
        PerfilScreen.routeName: (ctx) => PerfilScreen(),
        RegistrarseScreen.routeName: (ctx) => RegistrarseScreen(),
        ReservarScreen.routeName: (ctx) => ReservarScreen(),
        detallesReserva.routeName: (ctx) => detallesReserva(),
        DetailsBlancoScreen.routeName:(ctx) => DetailsBlancoScreen()
      },
    );
  }
}
