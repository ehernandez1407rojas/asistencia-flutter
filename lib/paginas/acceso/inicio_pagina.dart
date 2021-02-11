import 'package:asistencia/utilerias/rutas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';


class InicioPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreen(
          seconds: 3,
          // LA NUEVA VERSION DE FLUTTER A FINALES DEL 2020 GENERA ESTE ERROR Y 
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffFFF3E0), Color(0xffFFE0B2)],
            tileMode: TileMode.mirror            
          ),           
          navigateAfterSeconds: Rutas.ACCESO,
          loaderColor: Colors.transparent,
        ),
        Container(
          margin: EdgeInsets.all(Get.width*.10),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/imagenes/taller_ciclo.jpg"), fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }
}