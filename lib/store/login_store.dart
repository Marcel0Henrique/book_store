import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginController = LoginController_Base with _$LoginController;

abstract class LoginController_Base with Store {
  LoginController_Base() {
    autorun((_) {
      print(email_Controller.text);
    });
  }

  @observable
  TextEditingController email_Controller = TextEditingController();
  @observable
  TextEditingController pass_Controller = TextEditingController();

  @action
  setEmail() => email_Controller.text = email_Controller.text;
  @action
  setPass() => pass_Controller.text = pass_Controller.text;
}
