import 'package:clearn_architecure/core/error/failures.dart';
import 'package:clearn_architecure/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';
import 'package:clearn_architecure/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart';
import 'package:clearn_architecure/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clearn_architecure/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    return null;
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    return null;
  }
}

class NetworkInfo {}
