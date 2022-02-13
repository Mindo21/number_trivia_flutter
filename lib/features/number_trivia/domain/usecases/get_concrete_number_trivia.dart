import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:number_trivia_flutter/core/error/failures.dart';
import 'package:number_trivia_flutter/core/usecases/usecase.dart';
import 'package:number_trivia_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../entities/number_trivia.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object?> get props => [number];
}