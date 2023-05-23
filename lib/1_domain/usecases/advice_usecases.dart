import 'package:advicer/1_domain/entities/advice_entity.dart';
import 'package:advicer/1_domain/failures/failures.dart';
import 'package:advicer/1_domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCases {
  AdviceUseCases({required this.adviceRepo});

  final AdviceRepo adviceRepo;

  Future<Either<AdviceEntity, Failure>> getAdvice() async {
    return adviceRepo.getAdviceFromDataSource();
  }
}
