import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sw1/src/widget/menu_widget.dart';

class detallesReserva extends StatefulWidget {
  static const routeName = '/detalles-reserva';

  @override
  _detallesReservaState createState() => _detallesReservaState();
}

class _detallesReservaState extends State<detallesReserva> {
  @override
  Widget build(BuildContext context) {
    var data;
    return Scaffold(
        appBar: AppBar(
          title: Text('Reservas'),
        ),
        resizeToAvoidBottomInset: false,
        drawer: MenuWidget(),
        body: 
             Column(
                children: [
                       Text(
                         "Mis reservas",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                  ],
             )
    );
  }
}