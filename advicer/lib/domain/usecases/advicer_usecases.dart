import 'package:advicer/domain/entities/advice_Entity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/reposetories/advicer_repository.dart';
import 'package:advicer/infrastructure/repositories/advicer_repository_impl.dart';
import 'package:dartz/dartz.dart';

class AdvicerUsecases {
  final AdvicerRepository advicerRepository;

  AdvicerUsecases({required this.advicerRepository});

  Future<Either<Failure, AdviceEntity>> getAdviceUsecase() async {
    // call function from repository to get advice
    return advicerRepository.getAdviceFromApi();

    // Business logic implementieren z.b. rechnung etc
  }
}
