import 'package:trabajo_evaluacion1/widgets/rellenar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
  Color _color = Colors.white.withOpacity(0.5);
  int _container = 0;
  bool _activo = false;
  String hora = '';
  String _aula = '';
  String _asignatura = '';
  String _numHoras = '';

  @override
  Widget build(BuildContext context) {
 const dias = ["","L","M","MI","J","V",""];
 const horas = ["8h00","8h55","9h50","10h45","recreo","12h10","13h05","13h55"];
 const guardarHoras = [];
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
          children: List.generate(56, (index) {
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
                child: Center(child: Text(dias[index])),
              );
            }
            else if(index%7 == 0){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.cyan.withOpacity(0.5),
              ),
                child: Text(horas[(index/7).truncate().toInt()]),
              );
            }
            else if(index>28 && index<36){
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
                      color:  hora == '10h45' ? _container == index || _container == index-14 && _numHoras == '2' ? _color : _numHoras == '2' && _container == index ? _color : Colors.white.withOpacity(0.5) : _container == index || _container == index-7 && _numHoras == '2' ? _color : _numHoras == '1' && _container == index ? _color : Colors.white.withOpacity(0.5),
                    ),
                    child: Center(child: (_container == index ? Text('Aula: $_aula') : Text('')),
                    ) 
                  ),
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (context) => Rellenar(index,horas[(index/7).truncate().toInt()],dias[(index%7).truncate().toInt()]),
                     )).then((result){
                        setState(() {
                            _color = result[0];
                            _container = result[1];
                            guardarHoras.add(_container);
                            hora = result[2];
                            _aula = result[3];
                            _asignatura = result[4];
                            _numHoras = result[5];
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


