import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sw1/src/screens/home_screen.dart';
import 'package:sw1/src/widget/menu_widget.dart';
import 'package:sw1/src/screens/detalles_reserva.dart';

class ReservarScreen extends StatefulWidget {
  static const routeName = '/reservar-screen';

  @override
  _ReservarScreenState createState() => _ReservarScreenState();
}

class _ReservarScreenState extends State<ReservarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservas'),
      ),
      drawer: MenuWidget(),
      backgroundColor: Color(0xffeceff1),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Reservar cita",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Nombre del cliente",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.person_add),
                      onPressed: null,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Doctor",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.confirmation_number),
                      onPressed: null,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Fecha",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.date_range),
                      onPressed: null,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              // TextField(
              //   controller: idClinica,
              //   decoration: InputDecoration(
              //       labelText: "Id Clinica",
              //       border: OutlineInputBorder(),
              //       suffixIcon: IconButton(
              //         icon: Icon(Icons.add_location),
              //         onPressed: null,
              //       )),
              //       keyboardType: TextInputType.number,
              // ),
              //DropdownButton<String> (
              //  hint: Text("id clinica"),
              //  iconSize: 36,
              //  icon: Icon(Icons.arrow_drop_down, color: Colors.black),
              //  isExpanded: true
              //),
              TextField(
                decoration: InputDecoration(
                    labelText: "Telefono",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.call),
                      onPressed: null,
                    )),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "email",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.email),
                      onPressed: null,
                    )),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, HomeScreen.routeName);
                    },
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "GUARDAR",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, detallesReserva.routeName);
                    },
                    color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "MOSTRAR",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}