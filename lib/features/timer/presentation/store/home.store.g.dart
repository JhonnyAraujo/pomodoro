// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<String>? _$formattedTimeComputed;

  @override
  String get formattedTime => (_$formattedTimeComputed ??= Computed<String>(
    () => super.formattedTime,
    name: 'HomeStoreBase.formattedTime',
  )).value;

  late final _$_timerAtom = Atom(
    name: 'HomeStoreBase._timer',
    context: context,
  );

  @override
  int get _timer {
    _$_timerAtom.reportRead();
    return super._timer;
  }

  @override
  set _timer(int value) {
    _$_timerAtom.reportWrite(value, super._timer, () {
      super._timer = value;
    });
  }

  late final _$_isRunningAtom = Atom(
    name: 'HomeStoreBase._isRunning',
    context: context,
  );

  @override
  bool get _isRunning {
    _$_isRunningAtom.reportRead();
    return super._isRunning;
  }

  @override
  set _isRunning(bool value) {
    _$_isRunningAtom.reportWrite(value, super._isRunning, () {
      super._isRunning = value;
    });
  }

  late final _$HomeStoreBaseActionController = ActionController(
    name: 'HomeStoreBase',
    context: context,
  );

  @override
  void startTimer() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
      name: 'HomeStoreBase.startTimer',
    );
    try {
      return super.startTimer();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formattedTime: ${formattedTime}
    ''';
  }
}
