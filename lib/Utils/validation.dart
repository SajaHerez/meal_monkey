import 'package:flutter/material.dart';
import 'package:meal_mon/Data/reg_exp.dart';

String? passwordValidation(String? password) {
  if (password!.isEmpty) {
    return "Enter The Password";
  }
  if (!passReg.hasMatch(password)) {
    return "Enter Valid Password,at least 8 characters";
  }
  return null;
}

String? emailValidation(String? email) {
  if (email!.isEmpty) {
    return "Enter The Email";
  }
  if (!emailReg.hasMatch(email)) {
    return "Enter Valid Email(example@gmail.com)";
  }
  return null;
}

String? mobileNoValidation(String? mobileNo) {
  if (mobileNo!.isEmpty) {
    return "Enter The mobileNo";
  }
  if (!mobileNoReg.hasMatch(mobileNo)) {
    return "Enter Valid mobileNo(+083875574432)";
  }
  return null;
}

String? nameValidation(String? name) {
  if (name!.isEmpty) {
    return "Enter The Name";
  }
  if (!nameReg.hasMatch(name)) {
    return "Enter Valid Name(Jhon Alex)";
  }
  return null;
}

String? addressValidation(String? address) {
  if (address!.isEmpty) {
    return "Enter The Address";
  } else if (!nameReg.hasMatch(address)) {
    return "Enter Valid Address";
  }
  return null;
}

String? confirmPassword(String? password, String? conPassword) {
  if (conPassword!.isEmpty) {
    return " Enter The Password";
  }
  if (password!.compareTo(conPassword) != 0) {
    return "Confirm your Entered Password";
  }
  return null;
}

bool validate(GlobalKey<FormState> formKey) {
  final form = formKey.currentState;
  return form!.validate() ? true : false;
}
