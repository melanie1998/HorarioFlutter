import 'package:flutter/material.dart';

class Horario{
   int container;
   String hora;
   String aula;
   String asignatura;
   String numHoras;
   var dias = ['','L','M','MI','J','V','S'];
   var horas = ["","8h00","8h55","9h50","10h45","recreo","12h10","13h05","13h55"];
   List listaGuardarHoras = ["","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","",""];
List<Color>colores = [Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.5),
  ];
List listaGuardarAula = ["","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","",""];
List listaGuardarAsignatura = ["","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","","",
                            "","","","","","",""];    
Horario();
}
