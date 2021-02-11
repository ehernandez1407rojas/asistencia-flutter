import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BotonMenu extends StatelessWidget {
  final IconData icono;
  @required final String titulo;
  final Color colorUno;
  final Color colorDos;
  @required  final Function onPress;

  const BotonMenu({ 
  this.icono = FontAwesomeIcons.circle, 
  this.titulo, 
  this.colorUno = Colors.green, 
  this.colorDos = Colors.greenAccent, 
  this.onPress
  });


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        _botonMenuFondo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [   
            SizedBox(height: Get.height*0.14, width:Get.width*0.06,),         
            FaIcon(this.icono, color:Colors.white, size:Get.width*0.06),
            SizedBox(width: Get.width*0.05,),      
            Expanded(child: Text(this.titulo, style: TextStyle(color:Colors.white, fontSize: Get.height*.03),)),
            FaIcon(FontAwesomeIcons.chevronRight, color:Colors.white,size:Get.width*0.04),
            SizedBox(width: Get.width*0.06,), 

          ],
        )
      ],
    );
      
  }
}

class _botonMenuFondo  extends StatelessWidget {
  final IconData icono;  
  final Color colosUno;
  final Color colosDos;

  const _botonMenuFondo({
  this.icono, 
  this.colosUno, 
  this.colosDos}) ;  

  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height*0.1,
      margin: EdgeInsets.all(Get.width*0.04),
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black.withOpacity(0.2), offset: Offset(4,6), blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: <Color>[
            this.colosDos,
            this.colosUno
          ]
        )

      ),
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
          child: Stack(
          children:<Widget>[
            Positioned(
              right: Get.width*-0.03,
              child: FaIcon(this.icono, size: Get.width*0.20, color: Colors.white.withOpacity(0.2),)),
            
          ]
        ),
      )
      
    );
  }
}