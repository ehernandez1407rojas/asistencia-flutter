

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class InjeccionDependencias{
  static void inicio(){
    Get.lazyPut(() => Dio(
      BaseOptions(
        baseUrl: 'http://crmagencia-001-site1.ctempurl.com/api',
        connectTimeout: 6000,
        receiveTimeout: 6000
      )
    ),
    fenix: true    
    );

    // SERVICIOS o APIs
    

  }  
}