import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class IconoEncabezado extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String taller;
  final Color colorUno;
  final Color colorDos;

  const IconoEncabezado({
    @required this.icono, 
    @required this.titulo, 
    this.taller = 'nombre',
    this.colorUno = Colors.deepOrange, 
    this.colorDos = Colors.orangeAccent
    });
  

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: <Widget>[
        _IconoEncabezadoFondo(
          colorDos: this.colorDos, 
          colorUno: this.colorUno,
        ),
        Positioned(   
          top: Get.height*0.035,
          left: Get.width*0.02,       
          child: FaIcon(this.icono, size: Get.height*0.10, color: Colors.white.withOpacity(0.3),)
        ),
        Column(
          children: [
            SizedBox(height: Get.height*0.08, width: double.infinity,),
            Text(this.titulo, style: TextStyle(fontSize: Get.height*0.027, color: Colors.white.withOpacity(0.5)),),
            Text(this.taller, style: TextStyle(fontSize: Get.height*0.018, color: Colors.grey[100],)),
            SizedBox(height: Get.height*0.03,),
            FaIcon(this.icono, size: Get.height*0.05, color: Colors.white)
          ],
        ),
        
      ], 
    );
  }
}

class _IconoEncabezadoFondo extends StatelessWidget {
  final Color colorUno;
  final Color colorDos;

  const _IconoEncabezadoFondo({
    Key key, 
    this.colorUno, 
    this.colorDos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height*0.25,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(85)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color> [
            this.colorUno,
            this.colorDos
          ]
          )

      ),
      
      
    );
  }
}