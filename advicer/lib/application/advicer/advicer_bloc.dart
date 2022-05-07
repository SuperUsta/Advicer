import 'dart:async';

import 'package:advicer/domain/entities/advice_Entity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/usecases/advicer_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerNewBloc extends Bloc<AdvicerEvent, AdvicerState> {
  final AdvicerUsecases usecases;

  AdvicerNewBloc({required this.usecases}) : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStadeLoading());

      // do something
      Either<Failure, AdviceEntity> adviceOrFailure =
          await usecases.getAdviceUsecase();

      adviceOrFailure.fold(
          (failure) =>
              emit(AdvicerStateError(message: _mapFailureToMeassage(failure))),
          (advice) => emit(AdvicerStadeLoaded(advice: advice.advice)));
    });
  }
  String _mapFailureToMeassage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "Ups, API Error, please try again";
      case GeneralFailure:
        return "Ups, something gone wrong, please try again";
      default:
        return "Ups, something gone wrong, please try again";
    }
  }
}
