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

  late final _$_focusTimerAtom = Atom(
    name: 'HomeStoreBase._focusTimer',
    context: context,
  );

  @override
  int get _focusTimer {
    _$_focusTimerAtom.reportRead();
    return super._focusTimer;
  }

  @override
  set _focusTimer(int value) {
    _$_focusTimerAtom.reportWrite(value, super._focusTimer, () {
      super._focusTimer = value;
    });
  }

  late final _$_restTimerAtom = Atom(
    name: 'HomeStoreBase._restTimer',
    context: context,
  );

  @override
  int get _restTimer {
    _$_restTimerAtom.reportRead();
    return super._restTimer;
  }

  @override
  set _restTimer(int value) {
    _$_restTimerAtom.reportWrite(value, super._restTimer, () {
      super._restTimer = value;
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

  late final _$_isFocusModeAtom = Atom(
    name: 'HomeStoreBase._isFocusMode',
    context: context,
  );

  @override
  bool get _isFocusMode {
    _$_isFocusModeAtom.reportRead();
    return super._isFocusMode;
  }

  @override
  set _isFocusMode(bool value) {
    _$_isFocusModeAtom.reportWrite(value, super._isFocusMode, () {
      super._isFocusMode = value;
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
  void resetTimer() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
      name: 'HomeStoreBase.resetTimer',
    );
    try {
      return super.resetTimer();
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
