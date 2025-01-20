import 'package:absents_btn/models/baseline.dart';
import 'package:equatable/equatable.dart';

class BaselineState extends Equatable {
  const BaselineState();

  @override
  List<Object> get props => [];
}

class BaselineInitial extends BaselineState {}

class BaselineLoading extends BaselineState {}

class BaselineLoaded extends BaselineState {
  final List<Baseline> baseline;

  const BaselineLoaded({
    required this.baseline,
  });

  @override
  List<Object> get props => [baseline];
}

class BaselineError extends BaselineState {
  final String message;

  const BaselineError({required this.message});

  @override
  List<Object> get props => [message];
}
