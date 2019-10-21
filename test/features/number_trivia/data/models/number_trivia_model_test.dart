import 'package:clearn_architecure/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:clearn_architecure/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: "test Text");

  test(
    'should be a subclass of NumberTriva entity',
    () async {
      // asert
      expect(tNumberTriviaModel, isA<NumberTrivia>());
    },
  );
}
