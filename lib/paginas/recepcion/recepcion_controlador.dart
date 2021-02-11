import 'package:asistencia/paginas/recepcion/recepcion_repositorio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RecepcionControlador extends GetxController{
  final RecepcionRepositorio repository = RecepcionRepositorio();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController nameTextController = TextEditingController();

  void register() async {
    Get.dialog(Center(child: CircularProgressIndicator()), barrierDismissible: false);
    User user = await repository.createUserWithEmailAndPassword(
        emailTextController.text,
        passwordTextController.text,
        nameTextController.text);

    if (user != null) {
      box.write("auth", user);
      Get.offAllNamed(Routes.HOME, arguments: user);
    }
  }



}