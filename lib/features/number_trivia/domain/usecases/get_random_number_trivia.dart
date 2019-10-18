import 'package:clearn_architecure/core/error/failures.dart';
import 'package:clearn_architecure/core/usecase/usecase.dart';
import 'package:clearn_architecure/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clearn_architecure/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia implements Usecase {
  final NumberTriviaRepository numberTriviaRepository;
  GetRandomNumberTrivia(this.numberTriviaRepository);

  @override
  Future<Either<Failure, NumberTrivia>> call(p) async {
    // TODO: implement call
    return await numberTriviaRepository.getRandomNumberTrivia();
  }
}
