import 'package:dartz/dartz.dart';

import 'package:number_trivia_flutter/core/error/failures.dart';
import 'package:number_trivia_flutter/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}