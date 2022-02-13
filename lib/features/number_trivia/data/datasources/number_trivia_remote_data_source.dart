import 'package:number_trivia_flutter/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource {
  // Throws [ServerError]
  Future<NumberTriviaModel> getConcreteNumberTrivia(int number);

  // Throws [ServerError]
  Future<NumberTriviaModel> getRandomNumberTrivia();
}