part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerState {}

class AdvicerInitial extends AdvicerState {}

class AdvicerStadeLoading extends AdvicerState {}

class AdvicerStadeLoaded extends AdvicerState {
  final String advice;
  AdvicerStadeLoaded({required this.advice});
}

class AdvicerStateError extends AdvicerState {
  final String message;

  AdvicerStateError({required this.message});
}
