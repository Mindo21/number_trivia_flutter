import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:number_trivia_flutter/core/error/failures.dart';
import 'package:number_trivia_flutter/core/usecases/usecase.dart';
import 'package:number_trivia_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../entities/number_trivia.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}