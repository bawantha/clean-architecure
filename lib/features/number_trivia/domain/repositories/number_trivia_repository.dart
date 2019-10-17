import 'package:clearn_architecure/core/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/number_trivia.dart';

abstract class NumberTriviaRepository{
  Future<Either<Failure,NumberTrivia>> getConcreteNumberTrivia(int Number);
  Future<Either<Failure,NumberTrivia>> getRandomNumberTrivia();

}


// meke danne abastract calsses 