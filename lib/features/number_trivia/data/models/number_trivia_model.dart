import 'package:clearn_architecure/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter/widgets.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({@required int number, @required String text})
      : super(number: number, text: text);
}
