import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BotonGordo extends StatelessWidget { 

  final IconData icon;
  @required final String titulo;
  final Color color1; 
  final Color color2;
  @required final Function onTap;

  const BotonGordo({
     this.icon = FontAwesomeIcons.circle, 
     this.titulo, 
     this.color1 = Colors.grey, 
     this.color2 = Colors.blueGrey, 
     this.onTap
     }); 

  @override
  Widget build(BuildContext context) {    
    return GestureDetector(
        onTap: this.onTap,
        child: Stack(
          children: <Widget> [
          _BotonGordoFondo(this.icon, this.color2, this.color2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(height: Get.height*0.15, width: Get.width*0.06,),
              Row(                
                children: <Widget> [
                SizedBox( width: Get.width*0.03,),
                FaIcon(this.icon, size:Get.height*0.05, color: Colors.white,)
                ]
              ),
              SizedBox(width: Get.width*0.10,),
              Expanded(child: Text(this.titulo, style: TextStyle(color: Colors.white, fontSize: Get.height*0.02),)),
              FaIcon(FontAwesomeIcons.chevronRight, size:Get.height*0.02, color: Colors.white,),
              SizedBox(width: Get.width*0.09,),
            ],

          )

        ],
      ),
    );
  }
}

class _BotonGordoFondo extends StatelessWidget {

  final IconData icon;  
  final Color color1; 
  final Color color2;

  const _BotonGordoFondo(
    this.icon, 
    this.color1, 
    this.color2
  ) ; 
  
  @override
  Widget build(BuildContext context) {
    return Container(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: <Widget> [
            Positioned(
              right: Get.height*-0.015,
              top: Get.height*-0.02,
              child: FaIcon(this.icon, size: Get.height*0.12, color: Colors.white.withOpacity(0.20))
            )
          ],
        ),
      ),

      width: double.infinity,
      height: Get.height*0.10,      
      margin: EdgeInsets.all(Get.height*0.03),
      decoration: BoxDecoration(
        // color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black.withOpacity(0.2), offset: Offset(4,6), blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: <Color>[
            this.color1,
            this.color2,
          ] 
        )

      ),
      
    );
  }
}