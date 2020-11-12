import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Rellenar extends StatefulWidget {

final int index;
final horas;
final dias;
Rellenar(this.index,this.horas, this.dias);

  @override
  _RellenarState createState() => _RellenarState();
}

class _RellenarState extends State<Rellenar> {
  TextEditingController aulaController = new TextEditingController();
  TextEditingController asignaturaController = new TextEditingController();
  TextEditingController numHoraController = new TextEditingController();

  // create some values
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }
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
            Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: RawMaterialButton(
                  fillColor: pickerColor,
                  padding: EdgeInsets.all(20),
                  shape: CircleBorder(),
                  onPressed: () {
                  showDialog(
                    context: context,
                    child: AlertDialog(
                      title: const Text('Pick a color!'),
                      content: SingleChildScrollView(
                        child: SlidePicker(
                                pickerColor: currentColor,
                                onColorChanged: changeColor,
                                paletteType: PaletteType.rgb,
                                enableAlpha: false,
                                displayThumbColor: true,
                                showLabel: false,
                                showIndicator: true,
                                indicatorBorderRadius:
                                const BorderRadius.vertical(
                                top: const Radius.circular(25.0),
                                ),
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: const Text('Got it'),
                          onPressed: () {
                            setState(() => currentColor = pickerColor);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                  }
                  ),
                )
            ),
             RaisedButton(
             onPressed: () {
                Navigator.of(context).pop([currentColor, widget.index, widget.horas, aulaController.text, asignaturaController.text, numHoraController.text]);
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