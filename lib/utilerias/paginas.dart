

import 'package:asistencia/paginas/acceso/acceso_pagina.dart';
import 'package:asistencia/paginas/acceso/inicio_pagina.dart';
import 'package:asistencia/paginas/recepcion/recepcion_pagina.dart';
import 'package:asistencia/utilerias/rutas.dart';
import 'package:get/get.dart';

class Paginas{
  static final rutas = [
    GetPage(name: Rutas.INICIO, page: () => InicioPagina()),
    GetPage(name: Rutas.ACCESO, page: () => AccesoPagina()),
    GetPage(name: Rutas.RECEPCION, page: () => RecepcionPagina()),

  ];
}