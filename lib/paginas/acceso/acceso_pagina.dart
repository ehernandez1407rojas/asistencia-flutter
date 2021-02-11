import 'package:asistencia/utilerias/rutas.dart';
import 'package:asistencia/widgets/boton_gordo.dart';
import 'package:asistencia/widgets/boton_menu.dart';
import 'package:asistencia/widgets/encabezado.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'item_botom.dart';


class AccesoPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final items = <ItemBotom>[
      new ItemBotom( FontAwesomeIcons.receipt, 'Recepción', Color(0xff66A9F2), Color(0xff536CF6),  'Rutas.RECEPCION' ), 
      new ItemBotom( FontAwesomeIcons.tasks, 'Revisión', Color(0xffA1887F), Color(0xff8D6E63) ,  'Rutas.RECEPCION'),      
      new ItemBotom( FontAwesomeIcons.moneyCheckAlt, 'Presupuesto', Color(0xffFF9800), Color(0xffFFB74D) ,  'Rutas.RECEPCION' ),
      new ItemBotom( FontAwesomeIcons.tools, 'Reparacion', Color(0xff317183), Color(0xff46997D) ,  'Rutas.RECEPCION' ),
      new ItemBotom( FontAwesomeIcons.carSide, 'Entrega', Color(0xffCFD8DC), Color(0xffB0BEC5) ,  'Rutas.RECEPCION'),      
      new ItemBotom( FontAwesomeIcons.userClock, 'Seguimiento', Color(0xffF2D572), Color(0xffE06AA3) ,  'Rutas.RECEPCION'),      
    ];

    List<Widget> itemMap = items.map(
      (item) => BotonGordo(
        icon: item.icon,
        titulo: item.texto,
        color1: item.color1,
        color2: item.color2, 
        onTap: () =>  Get.offNamed(Rutas.RECEPCION),       
      )
    ).toList();

    return Scaffold(
      // backgroundColor: Colors.red,
      body: Stack(
        children: <Widget>[          
          Container(
            margin: EdgeInsets.only(top: Get.height*0.15),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox( height: Get.height*0.10),
                ...itemMap
              ],
            ),
          ),          
          PaginaEncabezado(),          
        ],
      )
             
      
    );
  }
}

class BotonGordoTemp extends StatelessWidget {
  const BotonGordoTemp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.carCrash,
      titulo: 'Registro',
      color1: Color(0xff6989F5),
      color2: Color(0xff906EF5),
      onTap: (){print('click');},
      
    );
  }
}

class PaginaEncabezado extends StatelessWidget {
  const PaginaEncabezado({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconoEncabezado(
          icono: FontAwesomeIcons.car,
          titulo: 'Taller Mecánico',
          taller: 'EL TALACHAS',
        ),
        Positioned(
          right: Get.height*0.01,
          top: Get.height*0.04,
          child: RawMaterialButton(
            onPressed: (){},
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
            child: FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.white,size: Get.height*0.025,)
          )
        )

      ],
     
    );
  }
}