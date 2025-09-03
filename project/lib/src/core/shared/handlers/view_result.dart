import 'package:flutter/material.dart';

import '../enums/result_state_enum.dart';

class SuccessModel<T> {
  final T data;
  SuccessModel({required this.data});

  @override
  String toString() => '$data';
}

class FailModel {
  final String message;
  FailModel({required this.message});

  @override
  String toString() => message;
}

class ViewResult<T> {
  final ResultState state;
  final SuccessModel<T>? successModel;
  final FailModel? failModel;

  ViewResult._({required this.state, this.successModel, this.failModel});

  // Constructeurs
  factory ViewResult.initial() => ViewResult._(state: ResultState.initial);
  factory ViewResult.loading() => ViewResult._(state: ResultState.loading);
  factory ViewResult.success(SuccessModel<T>? successModel) =>
      ViewResult._(state: ResultState.success, successModel: successModel);
  factory ViewResult.error(FailModel? failModel) =>
      ViewResult._(state: ResultState.error, failModel: failModel);

  // Helpers de statut
  bool get isInitial => state == ResultState.initial;
  bool get isLoading => state == ResultState.loading;
  bool get isSuccess => state == ResultState.success;
  bool get hasError => state == ResultState.error;

  // Méthode de copie
  ViewResult<T> copyWith({
    ResultState? state,
    SuccessModel<T>? successModel,
    FailModel? failModel,
  }) {
    return ViewResult._(
      state: state ?? this.state,
      successModel: successModel ?? this.successModel,
      failModel: failModel ?? this.failModel,
    );
  }

  // Logging automatique
  void logError({String tag = 'RESULT_ERROR'}) {
    if (hasError) {
      debugPrint('[$tag] ${failModel?.message}');
    }
  }

  @override
  String toString() {
    if (isSuccess) return 'Success[$T]: $successModel';
    if (hasError) return 'Error: ${failModel?.message}';
    return 'State: $state';
  }
}
