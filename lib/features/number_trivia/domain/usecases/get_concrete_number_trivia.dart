import 'package:clearn_architecure/core/error/failures.dart';
import 'package:clearn_architecure/core/usecase/usecase.dart';
import 'package:clearn_architecure/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements Usecase {
  final NumberTriviaRepository numberTriviaRepository;

  GetConcreteNumberTrivia(this.numberTriviaRepository);

  @override
  Future<Either<Failure, NumberTrivia>> call(p) {
    // TODO: implement call
    return numberTriviaRepository.getConcreteNumberTrivia(p.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super([number]);
}
