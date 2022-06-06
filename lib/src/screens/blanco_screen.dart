import 'package:flutter/material.dart';
import 'package:sw1/src/widget/menu_widget.dart';

class DetailsBlancoScreen extends StatelessWidget {
static const routeName = '/detailsblanco-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoo Center '),
      ), 
      drawer: MenuWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Estamos en la pagina principal.',
            style: TextStyle(
              fontSize: 22)),
              FloatingActionButton(
                child: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
      ), 
    );
}
}
