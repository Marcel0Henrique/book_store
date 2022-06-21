import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  LoginController() {}
  bool _visiblePassword = false;

  bool get visiblePassword => _visiblePassword;
  Icon visibilityIcon = Icon(Icons.visibility);

  changeVisiblePassword() {
    _visiblePassword = true;
    notifyListeners();
  }
}
