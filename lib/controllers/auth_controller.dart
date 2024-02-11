import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var userController = TextEditingController();
  var signInPasswordController = TextEditingController();
  var signUpPasswordController = TextEditingController();
  var recoveryPswdController = TextEditingController();
  var recoveryPswdConfirm = TextEditingController();

  String password = '';

  Rx<bool> rememberMe = false.obs;
  Rx<bool> signUpObscuretext = true.obs;
  Rx<bool> signInObscuretext = true.obs;
  Rx<bool> recoveryObscure = true.obs;
  Rx<bool> recoveryConfirmObscure = true.obs;
}
