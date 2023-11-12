import 'package:flutter/cupertino.dart';

class AppService{
  get hideKeyboard => FocusManager.instance.primaryFocus?.unfocus();
}