import 'package:asistencia/utilerias/injeccion_dependencias.dart';
import 'package:asistencia/utilerias/paginas.dart';
import 'package:asistencia/utilerias/rutas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  InjeccionDependencias.inicio();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Taller Mecánico',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      getPages: Paginas.rutas,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: Rutas.INICIO,
    );
  }
}

