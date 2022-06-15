// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginController_Base, Store {
  late final _$email_ControllerAtom =
      Atom(name: 'LoginController_Base.email_Controller', context: context);

  @override
  TextEditingController get email_Controller {
    _$email_ControllerAtom.reportRead();
    return super.email_Controller;
  }

  @override
  set email_Controller(TextEditingController value) {
    _$email_ControllerAtom.reportWrite(value, super.email_Controller, () {
      super.email_Controller = value;
    });
  }

  late final _$pass_ControllerAtom =
      Atom(name: 'LoginController_Base.pass_Controller', context: context);

  @override
  TextEditingController get pass_Controller {
    _$pass_ControllerAtom.reportRead();
    return super.pass_Controller;
  }

  @override
  set pass_Controller(TextEditingController value) {
    _$pass_ControllerAtom.reportWrite(value, super.pass_Controller, () {
      super.pass_Controller = value;
    });
  }

  late final _$LoginController_BaseActionController =
      ActionController(name: 'LoginController_Base', context: context);

  @override
  dynamic setEmail() {
    final _$actionInfo = _$LoginController_BaseActionController.startAction(
        name: 'LoginController_Base.setEmail');
    try {
      return super.setEmail();
    } finally {
      _$LoginController_BaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPass() {
    final _$actionInfo = _$LoginController_BaseActionController.startAction(
        name: 'LoginController_Base.setPass');
    try {
      return super.setPass();
    } finally {
      _$LoginController_BaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email_Controller: ${email_Controller},
pass_Controller: ${pass_Controller}
    ''';
  }
}
