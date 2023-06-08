
import 'package:flutter/material.dart';

class Formvalidation with ChangeNotifier{
  final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
 // var _formkey =GlobalKey<FormState>();
  var emailcontroller =TextEditingController();
  var passwordcontrooller= TextEditingController();
  bool valid = false;

  functionvalidate(){


    if(globalFormKey.currentState!.validate()){

      print('email is ${emailcontroller.text}');
      print('paswword is ${passwordcontrooller.text}');
      valid= true;
    }
    notifyListeners();
  }

}