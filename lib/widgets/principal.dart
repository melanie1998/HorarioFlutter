import 'package:trabajo_evaluacion1/Modelos/horario.dart';
import 'package:trabajo_evaluacion1/widgets/rellenar.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'HORARIO ESCOLAR MELANIE'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  final Horario atributos = new Horario();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title, style: TextStyle(color: Colors.white)),
        )
      ),
     body: Container(
       decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink, Colors.cyan])
        ),
       child: GridView.count(
          crossAxisCount: 7,
          children: List.generate(63, (index) {
             if(index == 0){
              return Container(
                child: Text(''),
                color: Colors.white.withOpacity(0.2),
            );
            }
            else if(index<7){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.cyan.withOpacity(0.5),
               ),
                child: Center(child: Text(atributos.dias[index])),
              );
            }
            else if(index%7 == 0){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.cyan.withOpacity(0.5),
              ),
                child: Text(atributos.horas[(index/7).truncate().toInt()]),
              );
            }
            else if(index>35 && index<43){
              return Container(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color:  Colors.grey,         
                    ),
                    child: Text(''),
                  ),
            );
            }
            else{
                return Container(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color:  atributos.hora == '10h45' ? atributos.listaGuardarHoras[index] == index || atributos.listaGuardarHoras[index] == index-14 ? atributos.colores[index] : atributos.listaGuardarHoras[index] == index ? atributos.colores[index] : Colors.white.withOpacity(0.5) : atributos.listaGuardarHoras[index] == index || atributos.listaGuardarHoras[index] == index-7 ? atributos.colores[index] : atributos.listaGuardarHoras[index] == index ? atributos.colores[index] : Colors.white.withOpacity(0.5),
                    ),
                    child: Center(child: (atributos.listaGuardarHoras[index] == index ? Text('${atributos.listaGuardarAula[index]}\n${atributos.listaGuardarAsignatura[index]}') : Text('')),
                    ) 
                  ),
                  
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (context) => Rellenar(index,atributos.horas[(index/7).truncate().toInt()],atributos.dias[(index%7).truncate().toInt()]),
                     )).then((result){
                        setState(() {
                          if(result[5] == '2' && result[2] != '10h45'){
                            atributos.listaGuardarHoras[index] = result[1];
                            atributos.listaGuardarHoras[index+7] = result[1]+7;
                            atributos.colores[index] = result[0];
                            atributos.colores[index+7] = result[0];
                            atributos.listaGuardarAula[index] = result[3];
                            atributos.listaGuardarAula[index+7] = result[3];
                            atributos.listaGuardarAsignatura[index] = result[4];
                            atributos.listaGuardarAsignatura[index+7] = result[4];
                          }else if(result[5] == '2' && result[2] == '10h45'){
                            atributos.listaGuardarHoras[index] = result[1];
                            atributos.listaGuardarHoras[index+14] = result[1]+14;
                            atributos.colores[index] = result[0];
                            atributos.colores[index+14] = result[0];
                            atributos.listaGuardarAula[index] = result[3];
                            atributos.listaGuardarAula[index+14] = result[3];
                            atributos.listaGuardarAsignatura[index] = result[4];
                            atributos.listaGuardarAsignatura[index+14] = result[4];
                          }else{
                            atributos.listaGuardarHoras[index] = result[1];
                            atributos.colores[index] = result[0];
                            atributos.listaGuardarAula[index] = result[3];
                            atributos.listaGuardarAsignatura[index] = result[4];

                          }
                        });
                        
                     }); 
                       
                     
                      
                  }
                ),
               
            );
              
              }

          }),
        ),
     ) 
   
      );   
  }
}
