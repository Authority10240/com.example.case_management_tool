import 'package:flutter/material.dart';

class BaseState{
  DataState dataState;
  String? error;

  BaseState({
    this.dataState = DataState.init,
    this.error
});
}

enum DataState{
  init,
  loading,
  reloading,
  success,
  error
}

abstract class BaseBlocPrimaryState{
  void call(BuildContext context);
}