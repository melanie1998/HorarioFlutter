import 'package:flutter/material.dart';
import 'package:trabajo_evaluacion1/main.dart';

class Rellenar extends StatefulWidget {

final int index;
final horas;
final dias;
Rellenar(this.index,this.horas, this.dias);

  @override
  _RellenarState createState() => _RellenarState();
}

class _RellenarState extends State<Rellenar> {
  bool activo = true;
  TextEditingController aulaController = new TextEditingController();
  TextEditingController asignaturaController = new TextEditingController();
  TextEditingController numHoraController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AÑADIR HORARIO'),
      ),
      body: SingleChildScrollView(
      child:  Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(
              initialValue: '${widget.index}',
              decoration: InputDecoration(
                labelText: 'Container numero',
              )
            
            ),
            TextFormField(
              initialValue: '${widget.horas}',
              decoration: InputDecoration(
                labelText: 'Hora',
              ) 
            ),
            TextFormField(
              initialValue: '${widget.dias}',
              decoration: InputDecoration(
                labelText: 'Dia',
              ) 
            ),
            TextField(
              controller: aulaController,
              decoration: InputDecoration(
                hintText: '',
                labelText: 'Aula',
              ) 
            ),
            TextFormField(
              controller: asignaturaController,
              decoration: InputDecoration(
                 hintText: '',
                labelText: 'Asignatura',
              ) 
            ),
            TextFormField(
              controller: numHoraController,
              decoration: InputDecoration(
                hintText: '',
                labelText: 'Horas',
              ) 
            ),
             RaisedButton(
             onPressed: () {
               print( widget.horas);
  
                Navigator.of(context).pop([Colors.white, widget.index, widget.horas,aulaController.text, asignaturaController.text, numHoraController.text]);
             },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
               child: InkWell(
                child: Container( 
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                    const Text('Añadir', style: TextStyle(fontSize: 20)),
              ),
             ),
              ),
            ],
          )
          
        
        ),
      ),
      );
  }
}